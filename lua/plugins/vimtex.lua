-- In Vim syntax,
-- Start VimTeX Compiler with :VimTexCompile
return {
    "lervag/vimtex",
    lazy = false,
    config = function()
            -- " This is necessary for VimTeX to load properly. The "indent" is optional.
            -- " Note that most plugin managers will do this automatically.
            -- " filetype plugin indent on
            --
            -- " This enables Vim's and neovim's syntax-related features. Without this, some
            -- " VimTeX features will not work (see ":help vimtex-requirements" for more
            -- " info).
            -- syntax enable
            vim.g.tex_flavor = 'latex'
            vim.g.vimtex_quickfix_mode=0
            -- set conceallevel=1
            vim.g.tex_conceal='abdmg'
            vim.g.vimtex_indent_enabled   = 1      -- turn off VimTeX indentation
            vim.g.vimtex_imaps_enabled    = 1      -- disable insert mode mappings (e.g. if you use UltiSnips)
            vim.g.vimtex_complete_enabled = 1      -- turn off completion
            vim.g.vimtex_syntax_enabled   = 1      -- disable syntax concea

            vim.g.vimtex_view_method = 'skim'
            vim.g.vimtex_view_general_viewer = 'skim'
            vim.g.vimtex_view_skim_sync = 1

            vim.g.vimtex_compiler_latexmk = {
                     aux_dir = 'build',
                     build_dir = 'build',
                     out_dir = '.',
                     callback = 1,
                     continuous = 1,
                     executable = 'latexmk',
                     hooks = {},
                     options = {
                       '-verbose',
                       '-file-line-error',
                       '-synctex=1',
                       '-interaction=nonstopmode',
                     },
                    }
            vim.g.vimtex_quickfix_open_on_warning = 0
            vim.g.vimtex_quickfix_ignore_filters = {
                   'Underfull \\hbox',
                   'Overfull \\hbox',
                   'LaTeX Warning: .+ float specifier changed to',
                   'LaTeX hooks Warning',
                   'Package siunitx Warning: Detected the "physics" package:',
                   'Package hyperref Warning: Token not allowed in a PDF string',
              }

        -- Set Leader wc to count words in VimTex
        vim.keymap.set("n", "<leader>wc", ":VimtexCountWords<CR>")
        -- Set Leader c to save the file and single shot compile in VimTeX
        -- set Leader S to <cmd>update<cr> and <cmd>VimtexCompileSS<cr>
        vim.keymap.set("n", "<leader>vtc", ":update<CR>:VimtexCompileSS<CR>")
        -- vim.keymap.set("n", "<leader>c", ":VimtexCompileSS<CR>")
    end,

}
