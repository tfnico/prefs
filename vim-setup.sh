#!
cd ~/.vim
mkdir repos
cd repos
git clone git://github.com/tpope/vim-pathogen.git
git clone git://github.com/altercation/vim-colors-solarized.git

cd ~/.vim
ln -s repos/vim-pathogen/autoload/ autoload
cd bundle
ln -s ../repos/vim-colors-solarized/ vim-colors-solarized

