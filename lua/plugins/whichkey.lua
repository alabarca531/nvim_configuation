return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
    },
    keys = {
        {
            "<leader>?",
            function()
                require "which-key".show {
                    window = 1,
                    layout = {
                        height = { min = 4, max = 15 },
                        width = { min = 20, max = 50 },
                        spacing = 3,
                    },
                }
            end
        },
    },
}
