# vim-dir

Personal .vim directory containing vimrc file and configurations.

## Setup
```bash
# Create symlink to use _vimrc within ~/.vim/ as the vimrc file.
$ ln -s ~/.vim/_vimrc ~/.vimrc

# Install Vundle submodule.
$ cd ~/.vim && git submodule update --init && cd -

# Install plugins through Vundle.
$ vim +PluginInstall +qall
```
