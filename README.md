# My new Neovim Setup

This setup contains a bunch of neovim plugins packed together to enhance my personal experience with development.

It's very well handcrafted, personally designed to suit my needs, and as minimalistic and functional as possible.

# What i used:

- For a package manager, i went with [packer.nvim](https://github.com/wbthomason/packer.nvim), maybe outdated and unmaintaned, but it's still functional enough.

- For text highlighting, i went with [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter), awesome at what it does, very lightweight and performant.

- For text completion, a complete set of plugins was used, mostly are dependencies of [lsp-zero.nvim](https://github.com/VonHeikemen/lsp-zero.nvim), and other are dependencies of these dependencies, check out 'lua/eduardostarz/packer.lua' for a complete list with all the plugins used:

    . *[mason.nvim](https://github.com/williamboman/mason.nvim) to install, configure usage and manage LSP packages.*

    . *[nvim-cmp](https://github.com/hrsh7th/nvim-cmp), a plugin that allows for LSP's to display snippets with completion for code.*
    . *[harpoon](https://github.com/theprimaegen/harpoon), a plugin that allows for a quick switch between files*
    . *[telescope](https://github.com/nvim-telescope/telescope.nvim), a very fast fuzzy finder to quick switch between files in a larger scope.*
    . *[undotree](https://github.com/mbbill/undotree) a great plugin that allows for a tree view over the past versions of your file, at the rate it gets updated.*
    . *[vim-fugitive](https://github.com/tpope/vim-fugitive) a plugin that allows visualization of git changes, files and more git related features inside neovim.*


# Default LSP's

- **bashls (Bash Script)**
- **cssls (CSS)**
- **eslint (Javascript)**
- **html-lsp (HTML)**
- **htmx-lsp (HTMX)**
- **jinja-lsp (Jinja2)**
- **lua-ls (Lua)**
- **pylsp (Python)**
- **rust-analyzer (Rust)**

A couple notes about the LSP's: by default, if you want to install rust-analyzer you need to have the Cargo Toolchain installed, for pylsp you need both python3 and pip installed, and for cssls, html-lsp and eslint, although there is no exact requirement at all to install the LSP's, they won't work out of the blue, they need to be set up when the most recent version of NodeJs and npm are installed on your machine. If you installed these LSP's without the requirements, pressing up 'X' on the mason menu will delete the LSP. After that, complete the requirements for installation and simply restart neovim, the said LSP's will reinstall themselfs.

# Important commands

- :PackerSync => Updates all packages listed in packer.lua and deletes every other that isn't listed there anymore.
- :Mason => Opens up the Mason menu.

# My remaps

<leader> is set to be the space bar key.


### Default neovim:
- (Normal mode) <leader>ko => opens up netrw directory view.
- (Normal mode) Shift + < => Indents the current line to the left.
- (Normal mode) Shift + > => Indents the current line to the right.
- (Normal mode, Visual mode) = => Indents the current line according to it's surrounding code, or indents all the selected code with visual mode according the same rule.
- (Visual mode) gc => Comments the code on the current line, or in the selection of visual mode.
- (Normal mode) CTRL + <leader> + Arrow Down => Creates a new window on the same file, horizontally to the current one.
- (Normal mode) CTRL + <leader> + Arrow Left => Creates a new window on the same file, vertically to the current one.
- (Normal mode) <leader> Any Arrow Key => Moves the cursor to the screen in the direction pressed, does nothing with a single window.
- (Normal mode) <leader>q => Closes windows starting from the last one and going towards the first one.

### LSP remaps (only does something when a snippet is displayed):
- (Insert mode) Enter => Accepts the suggestion from the autocomplete snippet.
- (Insert mode) CTRL + Space or CTRL + E => Closes the snippet.
- (Insert mode) Arrow Up => Goes up on the list of completion suggestions.
- (Insert mode) Arrow Down => Goes down on the list of completion suggestion.
- (Insert mode) CTRL + Arrow Up => Scrolls upwards the documentation preview of the highlighted item in the completion suggestion snippet.
- (Insert mode) CTRL + Arrow Down => Scrolls downwards on the documentation preview of the highlighted item in the completion suggestionsnippet.
- (Normal mode) CTRL + ] => Jumps to definition.


### Telescope remaps:

- (Normal mode) <leader>ff => Opens up the fuzzy finder find files menu.
- (Normal mode) CTRL + g => Opens up the fuzzy finder find files menu, but only shows the files that are covered by the git repository. If not inside a git repository, an error will be displayed.
- (Normal mode) CTRL + f => Opens up a prompt in the vim command menu, the inputed string will be used as a needle, and the haystack will be every file containing the needle.


### Undotree remaps:

- (Normal mode) <C-u> => Opens up undotree menu and displays previous versions of the opened file. 


### Vim-fugitive remaps: 
- (Normal mode) <leader>gs => Opens up a menu that shows unstaged and untracked files, as well as the head of the git repository.


### Harpoon remaps: 

- (Normal mode) <leader>a => Adds the current file into the harpoon menu at the very bottom.
- (Normal mode) CTRL + e => Opens up the harpoon menu.
- (Normal mode) <leader> 1..0 => Quickly switches to the file according to the pressed number and to it's position in the harpoon menu.
