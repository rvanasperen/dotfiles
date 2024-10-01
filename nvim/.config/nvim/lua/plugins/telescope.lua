return {

    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',

    dependencies = {
        'nvim-lua/plenary.nvim',
    },

    keys = {
        { "<leader>pf", "<cmd>Telescope find_files<cr>", desc = "[P]roject [F]iles" },
        { "<leader>ps", function()
            require("telescope.builtin").grep_string({
                -- search = vim.fn.input("Grep > ")
                search = "",
            })
        end, desc = "[P]roject [S]earch"},
        { "<leader>pg", "<cmd>Telescope git_files<cr>", desc = "[P]roject [G]it Files" },
    },

}

