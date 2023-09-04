-- fom u/Narizocracia
-- https://www.reddit.com/r/neovim/comments/vwsm89/different_tab_sizes_for_each_language/?rdt=57623

vim.bo.tabstop     = 8    -- size of a hard tabstop (ts).
vim.bo.shiftwidth  = 8    -- size of an indentation (sw).
vim.bo.expandtab   = true -- always uses spaces instead of tab characters (et).
vim.bo.softtabstop = 8    -- number of spaces a <Tab> counts for. When 0, feature is off (sts)

-- vim.o.colorcolumn  = 80
vim.cmd("set colorcolumn=81")
-- vim.cmd("colorscheme blue")
