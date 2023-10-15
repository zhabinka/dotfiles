NVIM_USER_CONFIG_DIR=nvim/lua/user

nvim-requirements:
	npm install -g tree-sitter-cli
	# https://github.com/BurntSushi/ripgrep
	# https://github.com/jesseduffield/lazygit
	# https://github.com/dundee/gdu
	# https://github.com/ClementTsang/bottom
	brew install ripgrep lazygit gdu bottom

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
	brew install exa

