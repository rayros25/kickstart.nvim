return {
    {
        'echasnovski/mini.pairs',
        version = false,
        -- mappings = {
        --     ['$'] = { action = 'closeopen', pair = '$$', neigh_pattern = '', register = { cr = false } },
        -- },
        config = function ()
            require('mini.pairs').setup()
        end
    },
}

