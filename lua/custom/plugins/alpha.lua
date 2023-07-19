-- return {
--     {
--         'goolord/alpha-nvim',
--         event = "VimEnter",
--         dependencies = { 'nvim-tree/nvim-web-devicons' },
--         opts = { require'alpha.themes.startify'.config }
--     }
-- }

-- return { {
--     'goolord/alpha-nvim',
--     event = "VimEnter",
--     dependencies = { 'nvim-tree/nvim-web-devicons' },
--     opts = { require'alpha.themes.dashboard'.config }
-- }
-- }
-- Wow the documentation sucks.
--
-- Config below stolen from SeniorMars on github (and slightly modified by me)
-- Logo stolen from xero on gitlab
-- ( https://github.com/xero/dotfiles/blob/main/neovim/.config/nvim/nvim-logo )

return {
    {
        "goolord/alpha-nvim", -- Dashboard
        -- dependencies = {"nvim-tree/nvim-web-devicons"}, -- i'm not sure if i want this
        config = function()
            local alpha = require("alpha")
            local dashboard = require("alpha.themes.dashboard")
            -- dashboard.section.header.val = {
            --     [[                                                                       ]],
            --     [[  ██████   █████                   █████   █████  ███                  ]],
            --     [[ ░░██████ ░░███                   ░░███   ░░███  ░░░                   ]],
            --     [[  ░███░███ ░███   ██████   ██████  ░███    ░███  ████  █████████████   ]],
            --     [[  ░███░░███░███  ███░░███ ███░░███ ░███    ░███ ░░███ ░░███░░███░░███  ]],
            --     [[  ░███ ░░██████ ░███████ ░███ ░███ ░░███   ███   ░███  ░███ ░███ ░███  ]],
            --     [[  ░███  ░░█████ ░███░░░  ░███ ░███  ░░░█████░    ░███  ░███ ░███ ░███  ]],
            --     [[  █████  ░░█████░░██████ ░░██████     ░░███      █████ █████░███ █████ ]],
            --     [[ ░░░░░    ░░░░░  ░░░░░░   ░░░░░░       ░░░      ░░░░░ ░░░░░ ░░░ ░░░░░  ]],
            --     [[                                                                       ]],
            --     [[                     λ it be like that sometimes λ                     ]]
            -- }
            --
            local logo = [[
                                             
      ███████████           █████      ██
     ███████████             █████ 
     ████████████████ ███████████ ███   ███████
    ████████████████ ████████████ █████ ██████████████
   ██████████████    █████████████ █████ █████ ████ █████
 ██████████████████████████████████ █████ █████ ████ █████
██████  ███ █████████████████ ████ █████ █████ ████ ██████


                          Like Vim, but Neo.
]]
			dashboard.section.header.val = vim.split(logo, "\n")


            dashboard.section.buttons.val = {
                dashboard.button("f", "  Find file", ":Telescope find_files hidden=true no_ignore=true<CR>"),
                dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
                dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
                dashboard.button("u", "  Update plugins", ":Lazy sync<CR>"),
                dashboard.button("r", "  Recently opened files", "<cmd>Telescope oldfiles<CR>"),
                dashboard.button("l", "  Open last session", "<cmd>RestoreSession<CR>"),
                dashboard.button("q", "  Quit", ":qa<CR>")
            }

            -- local handle, err = io.popen("fortune -s")
            local handle, err = io.popen("fortune splashes") -- this uses a custom fortune file 
                                                             -- of minecraft splash text
            if err or handle == nil then
                dashboard.section.footer.val = "May the truth be found."
                alpha.setup(dashboard.opts)
                return
            end
            local fortune = handle:read("*a")
            handle:close()
            dashboard.section.footer.val = fortune
            alpha.setup(dashboard.opts)
        end
    }
}
