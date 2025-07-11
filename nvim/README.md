# Description For Russell's Neovim Config

## Motions
- ci<enclosing character> will delete what is inside the first match to the
closing pair. i.e. ci" will kill what is inside the brackets "" and place
the cursor in insert mode
- vi same as above but will highlight selection
- C-a will increment intelligently all at once
- g C-a will increment as a counter
- 

## Hotkey and Command Overview
### Remaps
leader = " "
Netrw: <leader>pv
Need to remap scrolling because the editor for 

## Tools
### Search - " ps"
 - Fast search using grep/ripgrep for string
 - - Hit space ps

### File explorerer
 - Fast file switching
 - - Hit space pv
 - - Hit space pf

## Wish List
oil.nvim
zen mode
twilight
vim tmux navigator

## Plugins

### Surround
    Old text                    Command         New text
--------------------------------------------------------------------------------
    surr*ound_words             ysiw)           (surround_words)
    *make strings               ys$"            "make strings"
    [delete ar*ound me!]        ds]             delete around me!
    remove <b>HTML t*ags</b>    dst             remove HTML tags
    'change quot*es'            cs'"            "change quotes"
    <b>or tag* types</b>        csth1<CR>       <h1>or tag types</h1>
    delete(functi*on calls)     dsf             function calls

### Commentary
 - NORMAL mode
```
`gcc` - Toggles the current line using linewise comment
`gbc` - Toggles the current line using blockwise comment
`[count]gcc` - Toggles the number of line given as a prefix-count using linewise
`[count]gbc` - Toggles the number of line given as a prefix-count using blockwise
`gc[count]{motion}` - (Op-pending) Toggles the region using linewise comment
`gb[count]{motion}` - (Op-pending) Toggles the region using blockwise comment
```
 - VISUAL mode
```
`gc` - Toggles the region using linewise comment
`gb` - Toggles the region using blockwise comment
```
**Extra Mappings**
 - NORMAL mode
```
`gco` - Insert comment to the next line and enters INSERT mode
`gcO` - Insert comment to the previous line and enters INSERT mode
`gcA` - Insert comment to end of the current line and enters INSERT mode
```
 - - Linewise
```
`gcw` - Toggle from the current cursor position to the next word
`gc$` - Toggle from the current cursor position to the end of line
`gc}` - Toggle until the next blank line
`gc5j` - Toggle 5 lines after the current cursor position
`gc8k` - Toggle 8 lines before the current cursor position
`gcip` - Toggle inside of paragraph
`gca}` - Toggle around curly brackets
```
 - - Blockwise
```
`gb2}` - Toggle until the 2 next blank line
`gbaf` - Toggle comment around a function (w/ LSP/treesitter support)
`gbac` - Toggle comment around a class (w/ LSP/treesitter support)
```


### Package Manager: Packer
:PackerSync updates all packages

### Markdown-Preview
[markdown-preview](https://github.com/iamcco/markdown-preview.nvim)
**Requirements**
- node.js
  - apt install nodejs
- yarn
  - apt install yarn

Start the preview
:MarkdownPreview

Stop the preview
:MarkdownPreviewStop

### nvim-surround

### Autoclose

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

### Transparent
:TransparentEnable
:TransparentDisable
:TransparentToggle

### nvim-cmp
A completion engine plugin for neovim written in Lua.
Completion sources are installed from external repositories and sourced.

### LuaSnip
See Below

### VimTeX
See Below

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

## VimTeX
**This is so important it gets it's own category**
## Notes for VimTeX
 - xdotool is a workaround for Wayland and Zathura. This isn't strictly
 necessary if you are running x11. For now I'm choosing to simply use
 Okular as the pdf viewer.
 - It doesn't like okular currently, switching back to zathura.

### VimTex Quick Commands
:VimtexCompile
:VimtexView
Compile: <leader>lc
View: <leader>lv
Compile and View: <leader>ll

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

### LuaSnip
**So important it gets it's own section**
