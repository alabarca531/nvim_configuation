return {
    -- Cmake
    'cdelledonne/vim-cmake',
    lazy = true,
    ft = 'cmake',
    config = function()
        -- Settings
        vim.g.cmake_build_dir = 'build'
        vim.g.cmake_build_tool = 'ninja'

        -- Keybindings
        vim.keymap.set('n', '<leader>cg', ':CMakeGenerate<CR>',
            { noremap = true, silent = true, desc = '[C]Make [G]enerate' }
        )
        vim.keymap.set('n', '<leader>cb', ':CMakeBuild<CR>',
            { noremap = true, silent = true, desc = '[C]Make [B]uild' }
        )

        -- Cmake Link Compile Commands 
        vim.g.cmake_link_compile_commands = 1
    end,





}
