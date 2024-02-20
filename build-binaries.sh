#!/bin/bash

sudo userdel fzdev-disposable -r
sudo adduser --password "" -m fzdev-disposable

sudo su -c './build-binaries-user.sh' fzdev-disposable
