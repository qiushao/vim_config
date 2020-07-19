## install
0. dependency
coc.nvim request: 
vim > 8.1.17xxx
nodejs > 10

in LinuxMint 20
```
sudo apt install ctags global ripgrep clang clangd nodejs
```

1. git clone vim_config to ~/.vim

2. cp -r vim_config/autoload ~/.vim

3. add this line to your ~/.vimrc
```
source ~/.vim/vim_config/qiushao.vim
``` 

4. run this command
```
PlugInstall
```

5. copy ~/.vim/vim_config/coc-settings.json to ~/.vim

## project settings
### Leaderf settings
0. mkdir .vimproject mark this dir is a vim project, so Leaderf will auto gen gtags

### coc.nvim settings
0. in vim, run `:CocInstall coc-clangd`
1. copy ~/.vim/vim_config/CMakeLists.txt to your project dir, and modify the config, then run
```
mkdir .vimproject && cd .vimproject
cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=release -DCMAKE_EXPORT_COMPILE_COMMANDS=YES
cp compile_commands.json ..
```
