# Description For Russell's Neovim Config

## Necessary Linux Packages
 - ripgrep
 - xdotool

## Tools
### Search - " ps"
 - Fast search using grep/ripgrep for string

### File explorerer
 - Fast file switching

## Notes for VimTeX
 - xdotool is a workaround for Wayland and Zathura. This isn't strictly
 necessary if you are running x11. For now I'm choosing to simply use
 Okular as the pdf viewer.

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

### nvim-surround

### autoclose

### telescope

### ultisnips

### LuaSnip


