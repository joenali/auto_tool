rm -rf vim
git clone git@github.com:joenali/vim.git

if [ $? -ne 0 ];then
    cd ./vim

    git checkout -b better origin/better

    git submodule update --init --recursive
    if [ $? -ne 0 ];then
        cp -r vimfiles   ~/.vim
        cp _vimrc  ~/.vimrc
    fi
fi

