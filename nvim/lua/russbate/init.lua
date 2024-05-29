
print("hello from russbate")
print("For spelling type >>> :setlocal spell spelllang=en_us")

require("russbate.remap")
require("russbate.set")
require("russbate.packer")
--require("russbate.packer").startup(on_startup)
require("autoclose").setup()
require("nvim-surround").setup()

-- COLORS
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

-- NVIM MARKDOWN
vim.g.vim_markdown_no_default_key_mappings = 1

-- VIM-MARKDOWN-COMPOSER
vim.g.markdown_composer_autostart = 0
vim.g.markdown_composer_open_browser = 0
vim.g.markdown_composer_external_renderer = 'okular'
vim.g.markdown_composer_refresh_rate = 200

-- LineWrapping (soft only)
-- vim.opt.number #
--[[vim.opt.textwidth=0
vim.opt.wrapmargin=0
vim.opt.wrap
-- vim.opt.linebreak=80
vim.opt.columns=80]]

-- LINEWRAPPING (soft-wrap window)
--[[vim.opt.number -- (optional - will help to visually verify that it's working)
vim.opt.textwidth=0
vim.opt.wrapmargin=0
vim.opt.wrap
vim.opt.linebreak -- (optional - breaks by word rather than character)
]]

-- LINEWRAPPING (hard-wrap)
--[[vim.opt.number -- (optional - will help to visually verify that it's working)
vim.opt.textwidth=80
vim.opt.wrapmargin=0
vim.opt.formatoptions+=t
vim.opt.linebreak -- (optional - breaks by word rather than character)
]]

-- FOR LUASNIPS
vim.cmd([[
" Expand or jump in insert mode
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 

" Use Tab to expand and jump through snippets
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'

" Use Shift-Tab to jump backwards through snippets
imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
]])

require("luasnip.loaders.from_lua").lazy_load({paths = "~/.config/nvim/LuaSnip/"})
require("luasnip").config.set_config({ -- Setting LuaSnip config

  -- Enable autotriggered snippets
  enable_autosnippets = true,

  -- Use Tab (or some other key if you prefer) to trigger visual selection
  store_selection_keys = "<Tab>",
})



-- FOR MARKDOWN PREVIEW
-- set to 1, nvim will open the preview window after entering the Markdown buffer
-- default: 0
-- vim.g.mkdp_auto_start = 0

-- set to 1, the nvim will auto close current preview window when changing
-- from Markdown buffer to another buffer
-- default: 1
-- vim.g.mkdp_auto_close = 1

-- set to 1, Vim will refresh Markdown when saving the buffer or
-- when leaving insert mode. Default 0 is auto-refresh Markdown as you edit or
-- move the cursor
-- default: 0
-- vim.g.mkdp_refresh_slow = 0

-- set to 1, the MarkdownPreview command can be used for all files,
-- by default it can be use in Markdown files only
-- default: 0
-- vim.g.mkdp_command_for_global = 0

-- set to 1, the preview server is available to others in your network.
-- By default, the server listens on localhost (127.0.0.1)
-- default: 0
-- vim.g.mkdp_open_to_the_world = 0

-- use custom IP to open preview page.
-- Useful when you work in remote Vim and preview on local browser.
-- For more details see: https://github.com/iamcco/markdown-preview.nvim/pull/9
-- default empty
-- vim.g.mkdp_open_ip = ''

-- specify browser to open preview page
-- for path with space
-- valid: `/path/with\ space/xxx`
-- invalid: `/path/with\\ space/xxx`
-- default: ''
-- vim.g.mkdp_browser = ''

-- set to 1, echo preview page URL in command line when opening preview page
-- default is 0
-- vim.g.mkdp_echo_preview_url = 0

-- a custom Vim function name to open preview page
-- this function will receive URL as param
-- default is empty
-- vim.g.mkdp_browserfunc = ''

-- options for Markdown rendering
-- mkit: markdown-it options for rendering
-- katex: KaTeX options for math
-- uml: markdown-it-plantuml options
-- maid: mermaid options
-- disable_sync_scroll: whether to disable sync scroll, default 0
-- sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
--   middle: means the cursor position is always at the middle of the preview page
--   top: means the Vim top viewport always shows up at the top of the preview page
--   relative: means the cursor position is always at relative positon of the preview page
-- hide_yaml_meta: whether to hide YAML metadata, default is 1
-- sequence_diagrams: js-sequence-diagrams options
-- content_editable: if enable content editable for preview page, default: v:false
-- disable_filename: if disable filename header for preview page, default: 0
-- vim.cmd([[let g:mkdp_preview_options = {
--     \ 'mkit': {},
--     \ 'katex': {},
--     \ 'uml': {},
--     \ 'maid': {},
--     \ 'disable_sync_scroll': 0,
--     \ 'sync_scroll_type': 'middle',
--     \ 'hide_yaml_meta': 1,
--     \ 'sequence_diagrams': {},
--     \ 'flowchart_diagrams': {},
--     \ 'content_editable': v:false,
--     \ 'disable_filename': 0,
--     \ 'toc': {}
--     \ }
-- ]])

-- use a custom Markdown style. Must be an absolute path
-- like '/Users/username/markdown.css' or expand('~/markdown.css')
-- vim.g.mkdp_markdown_css = ''

-- use a custom highlight style. Must be an absolute path
-- like '/Users/username/highlight.css' or expand('~/highlight.css')
-- vim.g.mkdp_highlight_css = ''

-- use a custom port to start server or empty for random
-- vim.g.mkdp_port = ''

-- preview page title
-- ${name} will be replace with the file name
-- vim.g.mkdp_page_title = '[${name}]'

-- use a custom location for images
-- vim.g.mkdp_images_path = '/home/$USER/.markdown_images'

-- recognized filetypes
-- these filetypes will have MarkdownPreview... commands
-- vim.g.mkdp_filetypes = 'markdown'

-- set default theme (dark or light)
-- By default the theme is defined according to the preferences of the system
-- vim.g.mkdp_theme = 'dark'

-- combine preview window
-- default: 0
-- if enable it will reuse previous opened preview window when you preview markdown file.
-- ensure to set vim.g.mkdp_auto_close = 0 if you have enable this option
-- vim.g.mkdp_combine_preview = 0

-- auto refetch combine preview contents when change markdown buffer
-- only when g:mkdp_combine_preview is 1
-- vim.g.mkdp_combine_preview_auto_refresh = 1

-- FOR NEOVIM TREE
-- disable netrw at the very start of your init.lua
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1
-- 
-- -- optionally enable 24-bit colour
-- vim.opt.termguicolors = true
-- 
-- -- empty setup using defaults
-- require("nvim-tree").setup()
-- 
-- -- OR setup with some options
-- require("nvim-tree").setup({
--   sort = {
--     sorter = "case_sensitive",
--   },
--   view = {
--     width = 30,
--   },
--   renderer = {
--     group_empty = true,
--   },
--   filters = {
--     dotfiles = true,
--   },
-- })

