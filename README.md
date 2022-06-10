# vimcfg

## linux
- (cd ~ && git init && git remote add origin https://github.com/makiolo/vimcfg.git && git pull origin master)
- (vim -E -s -u ~/.vimrc +PluginInstall +qall)
- (cd ~/.vim/bundle/vimproc.vim/ && make)
- (sudo snap install cmake --classic && sudo snap install go --classic && sudo apt install -f python3-dev && cd ~/.vim/bundle/YouCompleteMe/ && python3 install.py --all)

## windows
- Add c:\vim82 to windows PATH
- cd && git init && git remote add origin https://github.com/makiolo/vimcfg.git && git pull origin master
- In vim :PluginInstall
