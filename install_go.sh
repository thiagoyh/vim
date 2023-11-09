#!/usr/bin/env bash

# 1.18以上
cd ~
wget https://golang.org/dl/go1.18.linux-amd64.tar.gz
sudo tar -xzf go1.18.linux-amd64.tar.gz -C /usr/local/

export PATH=$PATH:/usr/local/go/bin
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.zshrc

cd ~/.vim/plugged/YouCompleteMe
python3 ./install.py --clangd-completer --go-completer
