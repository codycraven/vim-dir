# vim-dir

Personal .vim directory containing vimrc file and configurations.

## Setup

```bash
# Clone repo into sub-directory of wherever you want it to live.
$ git clone https://github.com/codycraven/vim-dir.git

# Create symlink to use _vimrc within ~/.vim/ as the vimrc file.
$ ln -s $(pwd)/vim-dir/_vimrc ~/.vimrc

# Install Vundle submodule.
$ cd vim-dir && git submodule update --init && cd -

# Install plugins through Vundle.
$ vim +PluginInstall +qall
```
