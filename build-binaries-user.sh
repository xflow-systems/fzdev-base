#!/bin/bash

rm /tmp/fzdev-dist -rf

echo $USER && \

cd && \

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y && \
. "$HOME/.cargo/env" && \
git clone https://github.com/alacritty/alacritty && \
cd alacritty && \
cargo build --release && \
cp target/release/alacritty /tmp/fzdev-dist && \
echo 'Success! run "fzdev" to start dev environment'
