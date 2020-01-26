#!/usr/bin/env bash
#
# Mounts an EFI partition.
#

mount_point=/Volumes/EFI

if test -d $mount_point; then
    echo $mount_point is already mounted. Remove this device before running this script.
    exit 1
fi

# diskutil list

echo "Mounting $mount_point, admin password required"
sudo mkdir $mount_point
# sudo mount -t msdos /dev/disk13s1 $mount_point
