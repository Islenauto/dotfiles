#! /bin/zsh

DOT_FILES=(.bashrc .bash_profile .zshrc .zprofile .vimrc .vim .gitconfig .tmux.conf)

for file in ${DOT_FILES[@]}
do
	ln -s ~/dotfiles/$file ~/$file
done
