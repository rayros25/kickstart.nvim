return {
    -- purple
    {
        'maxmx03/fluoromachine.nvim',
        priority = 1000,
        config = function ()
            local fm = require 'fluoromachine'

            fm.setup {
                glow = false,
                theme = 'fluoromachine'
            }

            -- vim.cmd.colorscheme 'fluoromachine'
            vim.cmd.colorscheme 'solas'
            -- Yeah, this is hella scuffed. I know.
        end
    },
    -- bluish greenish
    'damage220/solas.vim',
    'jackiehluo/vim-material',
    'rebelot/kanagawa.nvim',
}
