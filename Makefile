NVIM_USER_CONFIG_DIR=nvim/lua/user

nvim-requirements:
	npm install -g tree-sitter-cli
	# https://github.com/BurntSushi/ripgrep
	brew install ripgrep

nvim-remove:
	rm -rf ~/.config/nvim
	rm -rf ~/.local/share/nvim
	rm -rf ~/.local/state/nvim
	rm -rf ~/.cache/nvim

nvim-install:
	# git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim

	# mkdir -p $(NVIM_USER_CONFIG_DIR)
	# git clone git@github.com:AstroNvim/user_example.git $(NVIM_USER_CONFIG_DIR)

	ln -snf $(PWD)/$(NVIM_USER_CONFIG_DIR) ~/.config/nvim/lua
	nvim  --headless -c 'quitall'

links:
	ln -snf $(PWD)/.zshrc ~/.zshrc
	ln -snf $(PWD)/.dive.yaml ~/.dive.yaml

setup: install links

install:
	brew install \
		rename \            # http://plasmasturm.org/code/rename/
		gnu-sed \           # https://www.gnu.org/software/sed
		exa \               # https://github.com/ogham/exa (replacement for ls)
		lazygit \           # https://github.com/jesseduffield/lazygit
		gdu \               # https://github.com/dundee/gdu
		bottom  \           # https://github.com/ClementTsang/bottom
		jq \                # https://jqlang.github.io/jq/
		fd \                # https://github.com/sharkdp/fd
		ripgrep \           # https://github.com/BurntSushi/ripgrep
		fzf \               # https://github.com/junegunn/fzf
		zoxide \            # https://github.com/ajeetdsouza/zoxide (historical directories navigation)
		yazi \              # https://yazi-rs.github.io/docs/quick-start (terminal file manager)
		ffmpegthumbnailer \ # https://github.com/dirkvdb/ffmpegthumbnailer (video thumbnails)
		unar \              # https://theunarchiver.com/command-line (archive preview)
		poppler \           # https://poppler.freedesktop.org/ (PDF preview)
		font-symbols-only-nerd-font
