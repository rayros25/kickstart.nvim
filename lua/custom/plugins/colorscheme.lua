return {
    -- purple
    {
        'maxmx03/fluoromachine.nvim',
        priority = 1000,
        config = function ()
            require 'fluoromachine'.setup {
                glow = false,
                theme = 'fluoromachine'
            }
            vim.cmd.colorscheme 'fluoromachine'
            -- vim.cmd.colorscheme 'solas'
            -- Yeah, this is hella scuffed. I know.
        end
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        -- priority = 1000,
        opts = {},
    },
    -- bluish greenish
    'damage220/solas.vim', -- THIS DOESN'T WORK WELL WITH NEORG
    'jackiehluo/vim-material',
    'rebelot/kanagawa.nvim',
    'ajmwagar/vim-deus',
    'morhetz/gruvbox',
}
