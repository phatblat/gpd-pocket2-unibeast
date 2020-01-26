#!/usr/bin/env bash
#
# Quickly diff the config file in this repo against the mounted EFI volume.
# Uses the ksdiff CLI interface for Kaleidoscope.
#

ksdiff EFI/CLOVER/config.plist /Volumes/EFI/EFI/CLOVER/config.plist
