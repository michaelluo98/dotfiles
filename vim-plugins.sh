#!/bin/bash

echo "Installing vim plugins"

# Thanks Tim Pope!!!
git clone https://github.com/mileszs/ack.vim.git ~/.vim/bundle/ack.vim
git clone https://github.com/morhetz/gruvbox.git ~/.vim/bundle/gruvbox
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/junegunn/fzf.vim.git ~/.vim/bundle/fzf.vim
git clone https://github.com/Yggdroot/indentLine.git ~/.vim/bundle/indentLine
git clone https://github.com/tpope/vim-commentary.git ~/.vim/bundle/vim-commentary
git clone https://github.com/tpope/vim-surround.git ~/.vim/bundle/vim-surround
git clone https://github.com/tpope/vim-repeat.git ~/.vim/bundle/vim-repeat
git clone https://github.com/godlygeek/tabular.git ~/.vim/bundle/tabular
git clone https://github.com/vim-ruby/vim-ruby.git ~/.vim/bundle/vim-ruby
git clone https://github.com/plasticboy/vim-markdown.git ~/.vim/bundle/vim-markdown
git clone --depth=1 https://github.com/rust-lang/rust.vim.git ~/.vim/bundle/rust.vim
git clone https://github.com/flxf/uCpp.vim.git ~/.vim/bundle/uCpp.vim
git clone https://github.com/hhvm/vim-hack.git ~/.vim/bundle/vim-hack

