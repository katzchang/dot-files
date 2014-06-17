PWD:=$(shell pwd)
TS:=$(shell date +%s)

all:
	@echo read me.

apply-git:
	$(MAKE) __apply FILE=.gitconfig
	$(MAKE) __apply FILE=.gitignore

__apply: __backup
	ln -s $(PWD)/$(FILE) $(HOME)/

__backup:
	( test -f $(HOME)/$(FILE) || test -d $(HOME)/$(FILE) ) && mv $(HOME)/$(FILE) $(HOME)/$(FILE).old.$(TS) || echo ok

