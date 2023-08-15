# Neovim configuration
This is my Neovim configuration file. I will continue to add more plugins as needed.

# Usage
If you want to use this configuration, then open up your terminal and make sure you are in ~/.config directory. Clone the repository and cd into "nvim" directory. Then execute:
```
nvim lua/user/plugins-setup.lua
```
And save the file. Wait for packer to install the plugins. After installing the plugins, exit plugins-setup.lua
After that run
```
nvim plugins/treesitter.lua
```
Save the file and wait for the installation to complete.

After following the above steps, you are good to go!

# Plugins used
- Plugin manager : [Packer](https://github.com/wbthomason/packer.nvim)
- Colorscheme : [Gruvbox](https://github.com/morhetz/gruvbox)
- Comment : [numToStr/Comment](https://github.com/numToStr/Comment.nvim)
- File explorer : [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
- Gitsigns : [Gitsigns](https://github.com/lewis6991/gitsigns.nvim)
- Fuzzy finder : [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- LSP : [lsp-zero](https://github.com/VonHeikemen/lsp-zero.nvim)
- Syntax highlighting : [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- Autopairs : [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- Icons : [web-dev-icons](https://github.com/nvim-tree/nvim-web-devicons)
- Colorizer(for CSS colors) : [Colorizer](https://github.com/norcalli/nvim-colorizer.lua)
