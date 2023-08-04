# Tuning Linux Kernel
Tuned is a good tool to tune the kernel: `yum install tuned`

## Added Directories
`/etc/tuned` – tuned configuration directory.
`/etc/tuned/tuned-main.conf` – tuned mail configuration file.
`/usr/lib/tuned/` – stores a sub-directory for all tuning profiles

## Running Tune as a Daemon
  1. `systemctl enable --now tuned`
  2. `tuned-adm active`

## Managing Profiles
List Tune profiles: `tuned-adm list`
Change profile: `tuned profile profile_name`

## Kernel Version Changes
View default kernel: `grubby --default-kernel`
View index: `grubby --default-index`
View all kernel images: `ls -l /boot/vmlinuz-*`
Get additional kernel: `grubby --info=/boot/KERNEL`
