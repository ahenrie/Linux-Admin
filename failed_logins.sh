sudo cat /var/log/secure | grep “authentication failure” | awk -F’=’ ‘{print $8}’ | sort | uniq
