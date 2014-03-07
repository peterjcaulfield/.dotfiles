##Bash environment

Not including ~/.profile as $PATH will be machine specifc

###Installing this bash environment on another machine
```
cd ~
git clone http://github.com/peterjcaulfield/bash.git ~/.bash
ln -s ~/.dotfiles/.bash_profile ~/.bash_profile
ln -s ~/.dotfiles/.bashrc ~/.bashrc
ln -s ~/.dotfiles/.bash_aliases ~/.bash_aliases
```

A install-env.sh is coming soon I swear
