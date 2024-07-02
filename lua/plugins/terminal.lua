return{
        "NvChad/nvterm",
        config = function ()
                require("nvterm").setup({

                        terminals = {
                                shell = vim.o.shell,
                                list = {},
                                type_opts = {
                                        float = {
                                                --         relative = 'editor',
                                                --          row = 0.3,
                                                --          col = 0.25,
                                                --          width = 0.5,
                                                --          height = 0.4,
                                                border= 'none' 
                                        },
                                        horizontal = { location = "rightbelow", split_ratio = .3, },
                                        vertical = { location = "rightbelow", split_ratio = .3 },
                                }
                        },
                        behavior = {
                                autoclose_on_quit = {
                                        enabled = false,
                                        confirm = true,
                                },
                                close_on_exit = true,
                                auto_insert = true,
                        },
                })
                vim.keymap.set("n", "<leader>h", function()
                        require("nvterm.terminal").toggle("horizontal")
                end, { noremap = true, silent = true, desc = "Toggle Horizontal Terminal" })

                vim.keymap.set("n", "<leader>v", function()
                        require("nvterm.terminal").toggle("vertical")
                end, { noremap = true, silent = true, desc = "Toggle Vertical Terminal" })
        end,
}
