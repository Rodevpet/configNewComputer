#!/bin/bash -e
# needed to start the script as root, verifying
if [ $(id -u ) = 0 ] ; then 
	#check if the mac is already homebrewed
	which -s brew
	if [[ $? != 0 ]] ; then
		# Install Homebrew
		/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	else
		echo "brew is already installed, updating it"
		brew update
	fi
	#check if curl is on the computer, then install or update
	which -s curl
	if [[ $? != 0 ]] ; then
		brew install curl
	else
		echo "curl is already installed, updating it"
	fi
	brew upgrade
	brew update 
	# checking if oh my zsh is installed
	if test -d ~/.oh-my-zsh; then
		echo "oh-my-zsh is installed, updating"
	else 
		sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	fi
	#moving .zshrc to the right path 
	cp ~/configNewComputer/usingFiles/.zshrc ~/
	source ~/.zshrc
	#setting up hyper
	cp ~/configNewComputer/usingFiles/.hyper.js ~/
	#installing neovim
	brew install neovim
	brew cleanup
	#moving neovim config file
	cp -r ~/configNewComputer/usingFiles/nvim ~/.config/
	git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
else 
	echo "You got to start the script as root"
	exit 1 
fi
