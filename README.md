# My new Neovim Setup

This setup contains a bunch of neovim plugins packed together to enhance my personal experience with development.

It's very well handcrafted, personally designed to suit my needs, and as minimalistic, functional and performance optimized as possible.

# What i used:

- For a package manager, i use [lazy.nvim](https://github.com/folke/lazy.nvim), very simple to use, very simple and has little to no performance overhead.

- For text highlighting, i use [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter), awesome at what it does, very lightweight and performant.

- For text completion, a complete set of plugins was used, mostly are dependencies of [lsp-zero.nvim](https://github.com/VonHeikemen/lsp-zero.nvim), and other are dependencies of these dependencies, check out 'lua/eduardostarz/packer.lua' for a complete list with all the plugins used:

   . *[mason.nvim](https://github.com/williamboman/mason.nvim) to install, configure usage and manage LSP packages.*
   
   . *[nvim-cmp](https://github.com/hrsh7th/nvim-cmp), a plugin that allows for LSP's to display snippets with completion for code.*
   
   . *[harpoon](https://github.com/theprimaegen/harpoon), a plugin that allows for a quick switch between files.*
   
   . *[telescope](https://github.com/nvim-telescope/telescope.nvim), a very fast fuzzy finder to quick switch between files in a larger scope.*
   
   . *[undotree](https://github.com/mbbill/undotree) a great plugin that allows for a tree view over the past versions of your file, at the rate it gets updated.*
   
   . *[vim-fugitive](https://github.com/tpope/vim-fugitive) a plugin that allows visualization of git changes, files and more git related features inside neovim.*


# Default Treesitter Parsers

- **Lua**
- **VimScript**
- **VimDoc**
- **Bash**

# Important commands

- :Mason => Opens up the Mason menu.

# My remaps

&lt;leader&gt; is set to be the space bar key.


### Default neovim:
- (Normal mode) &lt;leader&gt; ko => opens up netrw directory view.
- (Normal mode) Shift + < => Indents the current line to the left.
- (Normal mode) Shift + > => Indents the current line to the right.
- (Normal mode, Visual mode) = => Indents the current line according to it's surrounding code, or indents all the selected code with visual mode according the same rule.
- (Visual mode) gc => Comments the code on the current line, or in the selection of visual mode.
- (Normal mode) CTRL + &lt;leader&gt; + Arrow Down => Creates a new window on the same file, horizontally to the current one.
- (Normal mode) CTRL + &lt;leader&gt; + Arrow Left => Creates a new window on the same file, vertically to the current one.
- (Normal mode) &lt;leader&gt; Any Arrow Key => Moves the cursor to the screen in the direction pressed, does nothing with a single window.
- (Normal mode) &lt;leader&gt; q => Closes windows starting from the last one and going towards the first one.
- (Normal mode) &lt;leader&gt; q => Closes focused window unless if the current window is the last open window.

### LSP remaps (only does something when a snippet is displayed):
- (Insert mode) Enter => Accepts the suggestion from the autocomplete snippet.
- (Insert mode) CTRL + E => Toggles snippet for code completion and code documentation.
- (Insert mode) CTRL + Arrow Up => Goes up on the list of completion suggestions.
- (Insert mode) CTRL + Arrow Down => Goes down on the list of completion suggestion.
- (Insert mode) CTRL + Shift + Arrow Up => Scrolls upwards the documentation preview of the highlighted item in the completion suggestion snippet.
- (Insert mode) CTRL + Shift + Arrow Down => Scrolls downwards on the documentation preview of the highlighted item in the completion suggestionsnippet.
- (Normal mode) CTRL + ] => Jumps to definition.


### Telescope remaps:

- (Normal mode) &lt;leader&gt; ff => Opens up the fuzzy finder find files menu.
- (Normal mode) CTRL + g => Opens up the fuzzy finder find files menu, but only shows the files that are covered by the git repository. If not inside a git repository, an error will be displayed.
- (Normal mode) CTRL + f => Opens up a prompt in the vim command menu, the inputed string will be used as a needle, and the haystack will be every file containing the needle.


### Undotree remaps:

- (Normal mode) CTRL + u => Opens up undotree menu and displays previous versions of the opened file. 


### Vim-fugitive remaps: 
- (Normal mode) &lt;leader&gt; gs => Opens up a menu that shows unstaged and untracked files, as well as the head of the git repository.


### Harpoon remaps: 

- (Normal mode) &lt;leader&gt; a => Adds the current file into the harpoon menu at the very bottom.
- (Normal mode) CTRL + e => Opens up the harpoon menu.
- (Normal mode) &lt;leader&gt; 1..0 => Quickly switches to the file according to the pressed number and to it's position in the harpoon menu.
