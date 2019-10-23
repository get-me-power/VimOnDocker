deploy_path=~/vim
remote_path=https://github.com/vim/vim
branch=master
cd ${deploy_path}
if [ ! -e ${proj_name} ]; then
    git clone ${remote_path} ${proj_name}
    echo 'cloning success!'
else
    git pull origin ${branch}
    echo 'git pull success!'
fi
# build
cd ~/vim/src
echo 'start build vim'
./configure \
    --with-features=huge \
    --enable-gui=gtk2 \
    --enable-perlinterp \
    --enable-pythoninterp \
    --enable-python3interp \
    --enable-rubyinterp \
    --enable-luainterp \
    --enable-fail-if-missing

make
make install
