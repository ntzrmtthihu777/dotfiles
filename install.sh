# link .vimrc
ln -s ~/.vim/.vimrc ~/.vimrc
# clone plugins from git
cd ~/.vim
git submodule init
git submodule update
