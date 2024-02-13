
print("hello from russbate")

require("russbate.remap")
require("russbate.set")
require("russbate.packer")
--require("russbate.packer").startup(on_startup)
--require("autoclose").setup()
--require("nvim-surround").setup()

vim.o.background = "dark" -- or "light" for light mode

vim.cmd([[colorscheme gruvbox]])

-- -- THIS IS ALL VIMTEX STUFF HERE
-- vim.cmd([[filetype plugin indent on]])
-- vim.cmd([[syntax enable]])
-- 
-- vim.g.vimtex_compiler_enabled = 'true'
-- vim.cmd([[let g:tex_flavor = 'latex']])
-- 
-- --vim.cmd([[let g:vimtex_view_method = 'okular']])
-- 
-- --vim.cmd([[let g:vimtex_view_general_viewer = 'okular']])
-- vim.cmd([[let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex']])
-- 
-- vim.cmd([[let g:vimtex_compiler_method = 'latexmk']])


