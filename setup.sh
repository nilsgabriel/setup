#!/usr/bin/env bash

# Set Mac Settings
#./mac_settings.sh

# Install XCode
#xcode-select --install

# Install Brew
if test ! "$( command -v brew )"; then
    echo "Installing homebrew"
    ruby -e "$( curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install )"
fi

echo -e "\\n\\nInstalling homebrew packages..."
echo "=============================="

brew_formulas=(
	ack
	readline
	aircrack-ng
	openssl
	xz
	python
	bash-completion@2
	binutils
	p7zip
	cmake
	coreutils
	ctags
	exiftool
	ffmpeg
	findutils
	fzf
	git
	git-extras
	git-flow
	git-lfs
	gnupg
	pkg-config
	grep
	handbrake
	hub
	jpegoptim
	libconfig
	librsvg
	libxml2
	libxslt
	little-cms
	mas
	moreutils
	mysql
	ncftp
	netpbm
	nmap
	openssh
	optipng
	pandoc
	paperkey
	pigz
	pngcheck
	pv
	ruby-build
	rbenv
	reattach-to-user-namespace
	redis
	rename
	rsync
	speedtest-cli
	task
	timewarrior
	tldr
	tmux
	todo-txt
	tree
	ucspi-tcp
	unzip
	vim
	webkit2png
	wget
	yarn
	youtube-dl
	zopfli
)

for formula in "${brew_formulas[@]}"; do
    formula_name=$( echo "$formula" | awk '{print $1}' )
if brew list "$formula_name" > /dev/null 2>&1; then
echo "$formula_name already installed... skipping."
else
        brew install "$formula"
fi
done

# After the install, setup fzf
echo -e "\\n\\nRunning fzf install script..."
echo "=============================="
/usr/local/opt/fzf/install --all --no-bash --no-fish

# Brew install cask
#brew tap caskroom/cask

cask_formulas=(
	firefox
	sublime-text
  discord
  sequel-pro
  telegram
  transmission
  vagrant
  virtualbox
  vlc
)

for formula in "${cask_formulas[@]}"; do
    formula_name=$( echo "$formula" | awk '{print $1}' )
if brew cask list "$formula_name" > /dev/null 2>&1; then
echo "$formula_name already installed... skipping."
else
        brew cask install "$formula"
fi
done


# Install zsh
#sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Vim Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
