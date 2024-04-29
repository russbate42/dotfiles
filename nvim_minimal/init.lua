
-- Minimap
-- vim.g.minimap_width = 10
-- vim.g.minimap_auto_start = 1
-- vim.g.minimap_auto_start_win_enter = 1

require("russbate")
    -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
    disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,
print("hello")
require("russbate.packer")

