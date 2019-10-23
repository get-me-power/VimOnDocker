FROM ubuntu:latest
SHELL ["/bin/bash", "-c"]
ENV DEBIAN_FRONTEND=noninteractive

RUN ["sed","-i", "-e", "s/# deb-src/deb-src/g", "/etc/apt/sources.list"]
RUN ["apt", "update"]
RUN ["apt", "install", "-y", "git"]
RUN ["apt", "install", "-y", "curl"]
RUN ["apt", "build-dep", "-y", "vim"]
RUN git clone https://github.com/vim/vim ~/vim
RUN git clone https://github.com/kazukazuinaina/DockerOnVim ~/.vim
RUN ["bin/bash", "-c", "curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"]
