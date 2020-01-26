#!/usr/bin/env bash
#
# Mounts an EFI partition.
#

mount_point=/Volumes/EFI

if test -d $mount_point; then
    echo $mount_point is already mounted. Remove this device before running this script.
    exit 1
fi

diskutil list

echo "Enter integer number of disk containing the EFI partition to mount."
echo "Example: /dev/disk13s1 -> 13"
read -r disk_number

if ! test "$disk_number" -gt 0; then
    echo "Value $disk_number is not a number."
    exit 2
fi

echo "Mounting $mount_point, admin password required"
sudo mkdir $mount_point

echo "/dev/disk${disk_number}s1"
sudo mount -t msdos "/dev/disk${disk_number}s1" $mount_point
