return {
    {
        'echasnovski/mini.comment',
        version = false,
        config = function ()
            require('mini.comment').setup()
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
}
