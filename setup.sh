#!/bin/bash
function exe_cmd() {
    echo $1
    eval $1
}

root_dir=`pwd`
share_dir='/usr/share/vim'

exe_cmd "cp -f $root_dir/files/_vimrc $share_dir/_vimrc"
exe_cmd "cp -rf $root_dir/files/vimfiles $share_dir/"
exe_cmd "ln -sf $share_dir/_vimrc $HOME/.vimrc"
exe_cmd "ln -sf $share_dir/vimfiles $HOME/.vim"

exe_cmd "git clone https://github.com/VundleVim/Vundle.vim.git --depth=1 $share_dir/bundle/Vundle.vim"
exe_cmd 'echo | vim +PluginInstall +qall'

