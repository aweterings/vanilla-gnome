#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"


### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# Install RPM Fusion repository

# rpm-ostree install \
#		https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
#		https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
# rpm-ostree install rpmfusion-free-release rpmfusion-nonfree-release \
#		--uninstall rpmfusion-free-release \
#		--uninstall rpmfusion-nonfree-release

# this installs a package from fedora repos
rpm-ostree install screen

# this would install a package from rpmfusion
# rpm-ostree install vlc

# rpm-ostree install Broadcom drivers
rpm-ostree install broadcom-wl

#### Example for enabling a System Unit File

systemctl enable podman.socket
