if [[ $# -eq 0 ]]; then
	echo "error: enter the directory of the vim source repo as the first argument"
	exit 1
fi

echo "starting vim update"

vim_repo_path=$1
cur_path=$(pwd)

cd $vim_repo_path

./configure --with-features=huge             --enable-multibyte             --enable-rubyinterp=yes             --with-python3-command=python3.9             --with-python3-config-dir=/usr/lib/python3.9/config-3.9-x86_64-linux-gnu             --enable-python3interp=yes             --enable-perlinterp=yes             --enable-luainterp=yes             --enable-gui=no             --enable-cscope

make VIMRUNTIMEDIR=/usr/local/share/vim/vim82
sudo make install

cd $cur_path

echo "finished update"

