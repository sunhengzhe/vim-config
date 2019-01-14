# Vim Config

## Usage

```bash
git clone git@github.com:sunhengzhe/vim-config.git
cd vim-config

# or just override your config
cp ~/.vimrc ~/.vimrc.bk
cp -r ~/.vim ~/.vim.bk 

cp ./vimrc ~/.vimrc
cp -r ./vim ~/.vim
```

## You should know with vim

### Use Vundle as plugin manager

[Vundle](https://github.com/VundleVim/Vundle.vim)

Launch vim and run `:PluginInstall`

To install from command line:` vim +PluginInstall +qall`

### Use molokai as color theme

[molokai](https://github.com/tomasr/molokai)

### Notes

#### `set showcmd` not working

You must have `set showcmd` after `set nocompatible` like this:

```
set nocompatible
set showcmd
```
