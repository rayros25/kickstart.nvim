return {
    -- purple
    {
        'maxmx03/fluoromachine.nvim',
        priority = 1000,
        config = function ()
            require 'fluoromachine'.setup {
                glow = false, -- basically just highlighting
                brightness = 0.15, -- defines how intense the glow is

                -- theme = 'fluoromachine', -- classic purple and yellow
                -- theme = 'delta', -- strawberry red and green
                theme = 'retrowave', -- variation of the og but with more colors

                -- transparent = 'full', -- by default this is "false"
                -- I'm not sure I get what this goes.

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
