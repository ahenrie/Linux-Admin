#!/bin/bash

# Define the output configuration file
CONFIG_FILE="configuration.nix"

# Start the configuration file
echo "# NixOS Configuration" > $CONFIG_FILE
echo "{" >> $CONFIG_FILE

# Function to add a service to the configuration
add_service() {
    echo "  services.$1.enable = true;" >> $CONFIG_FILE
}

# Function to add a hardening option to the configuration
add_hardening_option() {
    echo "  security.$1.enable = true;" >> $CONFIG_FILE
}

# Function to configure the firewall (basic settings)
add_firewall() {
    echo "  networking.firewall.enable = true;" >> $CONFIG_FILE
    echo "  networking.firewall.allowedTCPPorts = [ 22 80 443 ];" >> $CONFIG_FILE  # SSH, HTTP, HTTPS
    echo "  networking.firewall.allowedUDPPorts = [ 123 ];" >> $CONFIG_FILE      # NTP
    echo "  networking.firewall.allowedInterfaces = [ \"lo\" ];  # Adjust this for your network interfaces" >> $CONFIG_FILE
}

# Prompt for services to enable
echo "Please enter the services you want to enable (comma-separated):"
echo "Available services: sshd, nginx, httpd, mysql, postgresql, firewall, fail2ban, auditd"
read -p "Services: " services_input

# Split the input into an array
IFS=',' read -r -a services <<< "$services_input"

# Add each service to the configuration
for service in "${services[@]}"; do
    service=$(echo $service | xargs)  # Trim whitespace
    if [[ "$service" == "firewall" ]]; then
        add_firewall
    else
        add_service "$service"
    fi
done

# Prompt for hardening options
echo "Please enter the hardening options you want to enable (comma-separated):"
echo "Available options: apparmor, selinux, pax, grsecurity, fail2ban, auditd, stackProtector"
read -p "Hardening Options: " hardening_input

# Split the input into an array
IFS=',' read -r -a hardening_options <<< "$hardening_input"

# Add each hardening option to the configuration
for option in "${hardening_options[@]}"; do
    option=$(echo $option | xargs)  # Trim whitespace
    if [[ "$option" == "firewall" ]]; then
        add_firewall
    else
        add_hardening_option "$option"
    fi
done

# Additional hardening settings
echo "  security.harden = true;" >> $CONFIG_FILE  # Enable general hardening
echo "  networking.ipv6.enable = false;" >> $CONFIG_FILE  # Disable IPv6

# Close the configuration file
echo "}" >> $CONFIG_FILE

# Notify the user
echo "NixOS configuration file '$CONFIG_FILE' has been created."
