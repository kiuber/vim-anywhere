#!/bin/bash
set -e

function exe_cmd() {
    echo $1
    eval $1
}

script_path=$(realpath "$0")
script_dir=$(dirname "$script_path")

exe_cmd "rm -rf $script_dir/files"
exe_cmd "mkdir $script_dir/files"
exe_cmd "cp -L ~/.vimrc $script_dir/files/"
exe_cmd "cp -rL ~/.vim $script_dir/files/"

for dir in $script_dir/files/.vim/plugged/*; do
    if [ -d "$dir" ]; then
        exe_cmd "rm -rf $dir/.git"
    fi
done

exe_cmd "ls -alh $script_dir/files"
