FROM ubuntu:latest
SHELL ["/bin/bash", "-c"]
ENV DEBIAN_FRONTEND=noninteractive

RUN ["sed","-i", "-e", "s/# deb-src/deb-src/g", "/etc/apt/sources.list"]
RUN ["apt", "update"]
RUN ["apt", "install", "-y", "git"]
RUN ["apt", "install", "-y", "curl"]
RUN ["apt", "build-dep", "-y", "vim"]
# RUN ["bin/bash", "-c", "git -C $HOME clone https:/github.com/vim/vim"]
RUN ["bin/bash", "-c", "curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"]
RUN ["echo", "set encoding=utf-8\nscriptencoding utf-8\ncall plug#begin('~/.vim/plugged')\nPlug 'vim-airline/vim-airline'\ncall plug#end()\nset t_Co=256", ">>", "~/.vimrc"]

