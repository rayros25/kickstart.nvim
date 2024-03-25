-- To switch colorschemes, uncomment stuff
-- Yeah, this is hella scuffed. I know.
return {
    {
        'maxmx03/fluoromachine.nvim',
        priority = 1000,
        config = function ()
            require 'fluoromachine'.setup {
                glow = false, -- basically just highlighting
                brightness = 0.15, -- defines how intense the glow is

                -- theme = 'fluoromachine', -- classic purple and yellow
                theme = 'delta', -- strawberry red and green
                -- theme = 'retrowave', -- variation of the og but with more colors

                -- transparent = 'full', -- by default this is "false"
                -- I'm not sure I get what this goes.

            }
            -- vim.cmd.colorscheme 'fluoromachine'
            vim.cmd.colorscheme 'material-oceanic'
        end
    },
    {
        'marko-cerovac/material.nvim',
        -- priority = 1000,
        config = function ()
            require 'material'.setup {
                contrast = {
                    sidebars = false,
                },
                styles = {},
                lualine_style = "default", -- other option is "stealth"
            }
            -- vim.cmd.colorscheme 'material'
        end
    },
    {
        'rafamadriz/neon',
        config = function()
            -- require("neon").setup {
            --     neon_style = "default",
            --     neon_italic = true,
            --     neon_bold = true
            -- }
            vim.g.neon_style = "default"
            vim.g.neon_italic = true
            vim.g.neon_bold = true

            -- vim.cmd[[colorscheme neon]]
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
    -- 'jackiehluo/vim-material',
    'rebelot/kanagawa.nvim',
    'ajmwagar/vim-deus',
    'morhetz/gruvbox',
    'junegunn/seoul256.vim',
    'doki-theme/doki-theme-vim',
}
