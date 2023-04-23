#!/bin/bash
set -e

function exe_cmd() {
    echo $1
    eval $1
}

script_path=$(realpath "$0")
script_dir=$(dirname "$script_path")

share_dir='/opt/local/usr/share/vim/vim-anywhere'

exe_cmd "rm -rf $share_dir"
exe_cmd "mkdir -p $share_dir"

exe_cmd "cp -rf $script_dir/files/. $share_dir/"
exe_cmd "ln -sf $share_dir/.vimrc $HOME/.vimrc"
exe_cmd "ln -sfn $share_dir/.vim $HOME/.vim"
exe_cmd "ls -alh $HOME/.vim*"

exe_cmd "chmod -R 777 $share_dir/.vim"
