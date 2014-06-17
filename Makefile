PWD:=$(shell pwd)

apply-git:
	ln -s $(PWD)/.gitconfig $(HOME)/
	ln -s $(PWD)/.gitignore $(HOME)/

