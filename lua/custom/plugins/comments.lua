return {
    {
        'echasnovski/mini.comment',
        version = false,
        config = function ()
            require('mini.comment').setup({
                options = {
                    custom_commentstring = function ()
                        if vim.bo.filetype == "renpy" then
                            return '# %s'
                        end
                    end
                }
            })
        end
    },
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        },
    },
    -- {
    --     'numToStr/Comment.nvim',
    --     opts = {
    --         -- add any options here
    --     },
    --     lazy = false,
    -- }
}
