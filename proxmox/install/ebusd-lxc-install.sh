#!/usr/bin/env bash

# Copyright (c) 2021-2024 tteck
# Author: tteck (tteckster)
# License: MIT
# https://github.com/tteck/Proxmox/raw/main/LICENSE

source /dev/stdin <<< "$FUNCTIONS_FILE_PATH"
color
verb_ip6
catch_errors
setting_up_container
network_check
update_os

msg_info "Installing Dependencies"
$STD apt-get install -y curl
$STD apt-get install -y wget
$STD apt-get install -y sudo
msg_ok "Installed Dependencies"

msg_info "Setting up ebusd Repository"
mkdir -p /etc/apt/keyrings
wget -q -O /etc/apt/keyrings/ebusd.gpg https://raw.githubusercontent.com/john30/ebusd-debian/master/ebusd.gpg
wget -O /etc/apt/sources.list.d/ebusd.list https://raw.githubusercontent.com/john30/ebusd-debian/master/ebusd-default-bookworm.list
msg_ok "Set up ebusd Repository"

msg_info "Installing ebusd"
$STD apt-get update
$STD apt-get install -y ebusd
msg_info "Installed ebusd"

motd_ssh
customize

msg_info "Cleaning up"
$STD apt-get autoremove
$STD apt-get autoclean
msg_ok "Cleaned"
