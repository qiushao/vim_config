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

4. mkdir .vimproject mark this dir is a vim project, so leaderf will auto gen gtags

5. copy ~/.vim/vim_config/coc-settings.json to ~/.vim

6. copy ~/.vim/vim_config/CMakeLists.txt to your project dir, and modify the config, then run
```
mkdir .vimproject
cd .vimproject
cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=release -DCMAKE_EXPORT_COMPILE_COMMANDS=YES
cp compile_commands.json ..
```


