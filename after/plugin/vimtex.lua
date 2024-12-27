-- vimtex options
-- In Vim syntax,
-- Start VimTeX Compiler with :VimTexCompile
vim.cmd([[
packadd vimtex
" This is necessary for VimTeX to load properly. The "indent" is optional.
" Note that most plugin managers will do this automatically.
filetype plugin indent on

" This enables Vim's and neovim's syntax-related features. Without this, some
" VimTeX features will not work (see ":help vimtex-requirements" for more
" info).
syntax enable
let g:tex_flavor = 'latex'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
let g:vimtex_indent_enabled   = 1      " turn off VimTeX indentation
let g:vimtex_imaps_enabled    = 1      " disable insert mode mappings (e.g. if you use UltiSnips)
let g:vimtex_complete_enabled = 1      " turn off completion
let g:vimtex_syntax_enabled   = 1      " disable syntax concea
" Set Engine to lualatex
let g:vimtex_compiler_latexmk = {
        \ 'aux_dir' : 'build',
        \ 'build_dir' : 'build',
        \ 'out_dir' : '.',
        \ 'callback' : 1,
        \ 'continuous' : 1,
        \ 'executable' : 'latexmk',
        \ 'hooks' : [],
        \ 'options' : [
        \   '-verbose',
        \   '-file-line-error',
        \   '-synctex=1',
        \   '-interaction=nonstopmode',
        \ ],
        \}
let g:vimtex_quickfix_open_on_warning = 0
let g:vimtex_quickfix_ignore_filters = [
      \ 'Underfull \\hbox',
      \ 'Overfull \\hbox',
      \ 'LaTeX Warning: .\+ float specifier changed to',
      \ 'LaTeX hooks Warning',
      \ 'Package siunitx Warning: Detected the "physics" package:',
      \ 'Package hyperref Warning: Token not allowed in a PDF string',
      \]

let g:vimtex_view_method = 'skim'
let g:vimtex_view_general_viewer = 'skim'

let g:vimtex_view_skim_sync = 1

nmap <localleader>v <plug>(vimtex-view)



" Viewer options: One may configure the viewer either by specifying a built-in
" viewer method:
"- let g:vimtex_view_method = 'zathura'

" Or with a generic interface:
" let g:vimtex_view_general_viewer = 'okular'
" let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

" VimTeX uses latexmk as the default compiler backend. If you use it, which is
" strongly recommended, you probably don't need to configure anything. If you
" want another compiler backend, you can change it as follows. The list of
" supported backends and further explanation is provided in the documentation,
" see ":help vimtex-compiler".
" let g:vimtex_compiler_method = 'latexrun'

" Most VimTeX mappings rely on localleader and this can be changed with the
" following line. The default is usually fine and is the symbol "\".
" let maplocalleader = ","

  ]])
-- Set Leader wc to count words in VimTex
vim.keymap.set("n", "<leader>wc", ":VimtexCountWords<CR>")
-- Set Leader c to save the file and single shot compile in VimTeX
-- set Leader S to <cmd>update<cr> and <cmd>VimtexCompileSS<cr>
vim.keymap.set("n", "<leader>vtc", ":update<CR>:VimtexCompileSS<CR>")
-- vim.keymap.set("n", "<leader>c", ":VimtexCompileSS<CR>")

