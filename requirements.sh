#!/bin/bash

sudo pacman -S --noconfirm \
	ripgrep rustup
# MasonInstall stylua prettier erb_lint black shfmt
rustup install stable
