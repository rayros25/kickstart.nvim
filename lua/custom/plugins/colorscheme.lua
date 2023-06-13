return {
    {
        'maxmx03/fluoromachine.nvim',
        priority = 1000,
        config = function ()
            local fm = require 'fluoromachine'

            fm.setup {
                glow = false,
                theme = 'fluoromachine'
            }

            vim.cmd.colorscheme 'fluoromachine'
        end
    }
}
