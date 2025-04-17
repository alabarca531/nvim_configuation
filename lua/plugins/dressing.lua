return {
  "stevearc/dressing.nvim",
  lazy = false,
  event = "VeryLazy",
  config = function()
    local status_ok, dressing = pcall(require, "dressing")
    if not status_ok then
      print("dressing not found!")
    end
    dressing.setup({
      input = {
        get_config = function()
          if vim.api.nvim_buf_get_option(0, "filetype") == "NvimTree" then
            return { enabled = false }
          end
        end,
      },
      select = {
        backend = { "telescope", "builtin" },
        get_config = function()
          if vim.api.nvim_buf_get_option(0, "filetype") == "NvimTree" then
            return { enabled = false }
          end
        end,
      },
    })
  end,
}
