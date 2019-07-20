0. git clone vim_config to ~/.vim

1. cp -r autoload ~/.vim

2. add this line to your ~/.vimrc
```
source ~/.vim/vim_config/qiushao.vim
``` 

3. run this command
```
PlugInstall
```

4. copy ~/.vim/vim_config/coc-settings.json to ~/.vim

5. copy ~/.vim/vim_config/CMakeLists.txt to your project dir, then run
```
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=release -DCMAKE_EXPORT_COMPILE_COMMANDS=YES
cp compile_commands.json ..
```

6. mkdir .vimproject mark this dir is a vim project, so leaderf will auto gen gtags

