return {
    "mfussenegger/nvim-dap",            -- Debug Adapter Protocol
    dependencies = {
        "mfussenegger/nvim-dap-python", -- Python Debug Adapter
        "rcarriga/nvim-dap-ui",         -- UI for DAP
        "nvim-neotest/nvim-nio",        -- Neotest integration for DAP
    },
    config = function()
        local dap = require("dap")
        local dapui = require("dapui")

        require("dapui").setup()

        -- dapui configuation
        dap.listeners.before.attach.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
            dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
            dapui.close()
        end

        -- Keybindings for DAP usage (use desc for better readability and integration
        -- with which-key)
        vim.keymap.set("n", "<leader>dc", dap.continue, { desc = "[D]ebug [C]ontinue" })
        vim.keymap.set("n", "<leader>dso", dap.step_over, { desc = "[D]ebug [S]tep [O]ver" })
        vim.keymap.set("n", "<leader>dsi", dap.step_into, { desc = "[D]ebug [S]tep [I]nto" })
        vim.keymap.set("n", "<leader>dtd", dap.toggle_breakpoint, { desc = "[D]ebug [T]oggle [B]reakpoint" })


        -- Python debug adapter setupQ
        require("dap-python").setup("python")

        -- Cpp debug adapter setup
        dap.adapters.codelldb = {
            type = "server", 
            port = "${port}",
            executable = {
                command = "codelldb",
                args = { "--port", "${port}" },
            },
        }
    end,
}
