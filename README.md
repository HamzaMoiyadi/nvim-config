# kickstart.nvim


### Introduction

A starting point for Neovim that is:

* Small
* Single-file (with examples of moving to multi-file)
* Documented
* Modular

This repo is meant to be used by **YOU** to begin your Neovim journey; remove the things you don't use and add what you miss.

Kickstart.nvim targets *only* the latest ['stable'](https://github.com/neovim/neovim/releases/tag/stable) and latest ['nightly'](https://github.com/neovim/neovim/releases/tag/nightly) of Neovim. If you are experiencing issues, please make sure you have the latest versions.

Distribution Alternatives:
- [LazyVim](https://www.lazyvim.org/): A delightful distribution maintained by @folke (the author of lazy.nvim, the package manager used here)

### Installation

* Backup your previous configuration (if any exists)

### Archive Installation
* On the home/landing page for the project find the blue "<> CODE" button click it and select Local > Download ZIP.
* Extract the archive to:
  `~/.config/nvim` (Linux)
  `~/.config/nvim` (MacOS)
  `%userprofile%\AppData\Local\nvim\` (Windows)
* Ensure your extraction method did not extract with a parent folder. For example in ~/.config/nvim you should have init.lua not another folder called kickstart.nvim.

### Git Clone Installation
* From a terminal cd/dir to:
    `~/.config/nvim` (Linux)
    `~/.config/nvim` (MacOS)
    `%userprofile%\AppData\Local\nvim\` (Windows)

* run: `git clone https://github.com/nvim-lua/kickstart.nvim.git ~/.config/nvim` OR: `gh repo clone nvim-lua/kickstart.nvim`
* Run Neovim (from terminal or shortcut) and allow lazy.nvim to download files and set up the basics.
* Once the setup is complete, restart Neovim.
* **You're ready to go!**

* (Recommended/Optional) Fork this repo (so that you have your own copy that you can modify).
* Clone the kickstart repo into `$HOME/.config/nvim/` (Linux/Mac) or `%userprofile%\AppData\Local\nvim\` (Windows)
  * If you don't want to include it as a git repo, you can just clone it and then move the files to this location

Additional system requirements:
- Make sure to review the readmes of the plugins if you are experiencing errors. In particular:
  - [ripgrep](https://github.com/BurntSushi/ripgrep#installation) is required for multiple [telescope](https://github.com/nvim-telescope/telescope.nvim#suggested-dependencies) pickers.
- See [Windows Installation](#Windows-Installation) if you have trouble with `telescope-fzf-native`

### Configuration And Extension

* Inside of your copy, feel free to modify any file you like! It's your copy!
* Feel free to change any of the default options in `init.lua` to better suit your needs.
* For adding plugins, there are 3 primary options:
  * Add new configuration in `lua/custom/plugins/*` files, which will be auto sourced using `lazy.nvim` (uncomment the line importing the `custom/plugins` directory in the `init.lua` file to enable this)
  * Modify `init.lua` with additional plugins.
  * Include the `lua/kickstart/plugins/*` files in your configuration.

You can also merge updates/changes from the repo back into your fork, to keep up-to-date with any changes for the default configuration.

#### Example: Adding an autopairs plugin

In the file: `lua/custom/plugins/autopairs.lua`, add:

```lua
-- File: lua/custom/plugins/autopairs.lua

return {
  "windwp/nvim-autopairs",
  -- Optional dependency
  dependencies = { 'hrsh7th/nvim-cmp' },
  config = function()
    require("nvim-autopairs").setup {}
    -- If you want to automatically add `(` after selecting a function or method
    local cmp_autopairs = require('nvim-autopairs.completion.cmp')
    local cmp = require('cmp')
    cmp.event:on(
      'confirm_done',
      cmp_autopairs.on_confirm_done()
    )
  end,
}
```


This will automatically install [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs) and enable it on startup. For more information, see documentation for [lazy.nvim](https://github.com/folke/lazy.nvim).

### Contribution

Pull-requests are welcome. The goal of this repo is not to create a Neovim configuration framework, but to offer a starting template that shows, by example, available features in Neovim. Some things that will not be included:

* Custom language server configuration (null-ls templates)
* Theming beyond a default colorscheme necessary for LSP highlight groups

Each PR, especially those which increase the line count, should have a description as to why the PR is necessary.


### Windows Installation

Installation may require installing build tools, and updating the run command for `telescope-fzf-native`

See `telescope-fzf-native` documentation for [more details](https://github.com/nvim-telescope/telescope-fzf-native.nvim#installation)

This requires:

- Install CMake, and the Microsoft C++ Build Tools on Windows

```lua
{'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
```

