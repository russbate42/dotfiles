# Description For Russell's Neovim Config

## Motions

## Hotkey and Command Overview
### Remaps
leader = " "
Netrw: <leader>pv

### Markdown Composer

- :ComposerStart Start the preview server
- :ComposerOpen Opens a new broser window containing the markdown preview.
- :help markdown-composer

### Package Manager: Packer
:PackerSync updates all packages

### Telescope
Ripgrep Search: <leader>ps
Fuzzy finder: <leader>pf

### Harpoon2

- Add files: <leader>add
- Add files: <leader>add
- Cycle left: Ctrl-t
- Cycle right: Ctrl-p
- Select files hotkeys: Ctrl-y/u/i/o (files 1-4)

### Treesitter
If there is an issue with tree-sitter try:

:TSUpdate or :TSUpdateSync

For LaTeX syntax highlighting, the tree-sitter cli is required
This can be installed with rust: cargo install tree-sitter-cli

### Minimap
:Minimap opens minimap
:MinimapClose closes minimap

### VimTex Quick Commands
:VimtexCompile
:VimtexView
Compile: <leader>lc
View: <leader>lv
Compile and View: <leader>ll

## Necessary Linux Packages
 - ripgrep
 - xdotool
 - python3
 - - can use python3-minimal apt-get package
 - - python3 -m pip install --user --upgrade pynvim
 - code-minimap
 - - can be installed with cargo install --locked code-minimap

## Extra Linux Packages
 - tree-sitter-cli

## Tools
### Search - " ps"
 - Fast search using grep/ripgrep for string
 - - Hit space ps

### File explorerer
 - Fast file switching
 - - Hit space pv
 - - Hit space pf

## Notes for VimTeX
 - xdotool is a workaround for Wayland and Zathura. This isn't strictly
 necessary if you are running x11. For now I'm choosing to simply use
 Okular as the pdf viewer.
 - It doesn't like okular currently, switching back to zathura.

## Packages
### VimTeX
**Motion** Described in the readme here: github.com/lervag/vimtex
 - Motions
 - - Move between section boundaries with [[, [], ][, and ]]
 - - Move between environment boundaries with [m, [M, ]m, and ]M
 - - Move between math environment boundaries with [n, [N, ]n, and ]N
 - - Move between frame environment boundaries with [r, [R, ]r, and ]R
 - - Move between comment boundaries with [* and ]*
 - - Move between matching delimiters with %
 - - Text objects (link to GIF demonstrations)
 - - ic ac Commands
 - - id ad Delimiters
 - - ie ae LaTeX environments
 - - i$ a$ Math environments
 - - iP aP Sections
 - - im am Items
 - Other mappings (link to GIF demonstrations)
 - - Delete the surrounding command, environment or delimiter with dsc/dse/ds$/dsd
 - - Change the surrounding command, environment or delimiter with csc/cse/cs$/csd
 - - Toggle starred command or environment with tsc/tse
 - - Toggle inline and displaymath with ts$
 - - Toggle between e.g. () and \left(\right) with tsd
 - - Toggle (inline) fractions with tsf
 - - Close the current environment/delimiter in insert mode with ]]
 - - Add \left ... \right) modifiers to surrounding delimiters with <F8>
 - - Insert new command with <F7>
 - - Convenient insert mode mappings for faster typing of e.g. maths
 - - Context menu on citations (e.g. \cite{...}) mapped to <cr>
 - Improved folding (:h 'foldexpr')
 - Improved indentation (:h 'indentexpr')
 - Syntax highlighting
 - - A consistent core syntax specification
 - - General syntax highlighting for several popular LaTeX packages
 - - Nested syntax highlighting for several popular LaTeX packages
 - - Highlight matching delimiters

### treesitter
 - If there is an issue with tree-sitter try:
    :TSUpdate or :TSUpdateSync

### nvim-surround

### autoclose

### telescope

### ultisnips

### LuaSnip


