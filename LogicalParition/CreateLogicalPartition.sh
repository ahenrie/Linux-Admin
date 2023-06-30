
parted
pvcreate /dev/sdb
vgcreate vg00 /dev/sdb
lvcreate -L 1.9GB -n disk2 vg00
mkfs -t xfs /dev/mapper/vg00-disk2
mkdir /mnt/disk2
mount /dev/mapper/vg00-disk2 /mnt/disk2/
chmod 777 /mnt/disk2/
df -h
vim /etc/fstab
umount /mnt/disk2
mount /mnt/disk2/
vim /etc/fstab
mount /mnt/disk2/
df -h
lsblk
