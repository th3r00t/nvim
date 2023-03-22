-- Autoreload Plugins
vim.cmd([[
    augroup packer_user_config
      autocmd!
      autocmd BufWritePost plugins.lua source <afile> |
    augroup end
  ]])
-- Vim-pyenv w/ jedi-vim
--vim.cmd([[
--    if jedi#init_python()
--      function! s:jedi_auto_force_py_version() abort
--        let g:jedi#force_py_version = pyenv#python#get_internal_major_version()
--      endfunction
--      augroup vim-pyenv-custom-augroup
--        autocmd! *
--        autocmd User vim-pyenv-activate-post   call s:jedi_auto_force_py_version()
--        autocmd User vim-pyenv-deactivate-post call s:jedi_auto_force_py_version()
--      augroup END
--    endif
--  ]])
vim.cmd([[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]])
vim.cmd([[autocmd FileType python,javascript,typescript,zig,rust,html,sass,scss,css,lua AerialOpen]])
vim.cmd([[autocmd FileType python,javascript,typescript,zig,rust,html,sass,scss,css,lua Trouble]])
vim.cmd([[autocmd FileType python,javascript,typescript,zig,rust,html,sass,scss,css,lua TroubleRefresh]])
vim.cmd([[
  if executable('ccls')
   au User lsp_setup call lsp#register_server({
      \ 'name': 'ccls',
      \ 'cmd': {server_info->['ccls']},
      \ 'root_uri': {server_info->lsp#utils#path_to_uri(
      \   lsp#utils#find_nearest_parent_file_directory(
      \     lsp#utils#get_buffer_path(), ['.ccls', 'compile_commands.json', '.git/']))},
      \ 'initialization_options': {
      \   'highlight': { 'highlight' : v:true },
      \   'cache': {'directory': stdpath('cache') . '/ccls' },
      \ },
      \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp', 'cc'],
      \ })
  endif
  let g:lsp_cxx_hl_use_text_props = 1 
  
  if executable('pyls')
      " pip install python-language-server
      au User lsp_setup call lsp#register_server({
          \ 'name': 'pyls',
          \ 'cmd': {server_info->['pyls']},
          \ 'allowlist': ['python'],
          \ })
  endif

  function! s:on_lsp_buffer_enabled() abort
      setlocal omnifunc=lsp#complete
      setlocal signcolumn=yes
      if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
      nmap <buffer> gd <plug>(lsp-definition)
      nmap <buffer> gs <plug>(lsp-document-symbol-search)
      nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
      nmap <buffer> gr <plug>(lsp-references)
      nmap <buffer> gi <plug>(lsp-implementation)
      nmap <buffer> gt <plug>(lsp-type-definition)
      nmap <buffer> <leader>rn <plug>(lsp-rename)
      nmap <buffer> [g <plug>(lsp-previous-diagnostic)
      nmap <buffer> ]g <plug>(lsp-next-diagnostic)
      nmap <buffer> K <plug>(lsp-hover)
      nnoremap <buffer> <expr><c-f> lsp#scroll(+4)
      nnoremap <buffer> <expr><c-d> lsp#scroll(-4)

      let g:lsp_format_sync_timeout = 1000
      autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')
      
      " refer to doc to add more commands
  endfunction

  augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
  augroup END
  "Auto Open Netrw
  "augroup ProjectDrawer
  "    autocmd!
  "    autocmd VimEnter * :Vexplore
  "augroup END
  augroup term_settings
      autocmd!
      " Do not use number and relative number for terminal inside nvim
      autocmd TermOpen * setlocal norelativenumber nonumber
      " Go to insert mode by default to start typing command
      autocmd TermOpen * startinsert
  augroup END
  " More accurate syntax highlighting? (see `:h syn-sync`)
  augroup accurate_syn_highlight
      autocmd!
      autocmd BufEnter * :syntax sync fromstart
  augroup END
  " Return to last edit position when opening a file
  augroup resume_edit_position
      autocmd!
      autocmd BufReadPost *
          \ if line("'\"") > 1 && line("'\"") <= line("$") && &ft !~# 'commit'
          \ | execute "normal! g`\"zvzz"
          \ | endif
  augroup END
  " Display a message when the current file is not in utf-8 format.
  " Note that we need to use `unsilent` command here because of this issue:
  " https://github.com/vim/vim/issues/4379
  augroup non_utf8_file_warn
      autocmd!
      autocmd BufRead * if &fileencoding != 'utf-8'
                  \ | unsilent echomsg 'File not in UTF-8 format!' | endif
  augroup END
  " Automatically reload the file if it is changed outside of Nvim, see
  " https://unix.stackexchange.com/a/383044/221410. It seems that `checktime`
  " command does not work in command line. We need to check if we are in command
  " line before executing this command. See also http://tinyurl.com/y6av4sy9.
  augroup auto_read
      autocmd!
      autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
                  \ if mode() == 'n' && getcmdwintype() == '' | checktime | endif
      autocmd FileChangedShellPost * echohl WarningMsg
                  \ | echo "File changed on disk. Buffer reloaded!" | echohl None
  augroup END
  func! GodotSettings() abort
      setlocal foldmethod=expr
      setlocal tabstop=4
      nnoremap <buffer> <F4> :GodotRunLast<CR>
      nnoremap <buffer> <F5> :GodotRun<CR>
      nnoremap <buffer> <F6> :GodotRunCurrent<CR>
      nnoremap <buffer> <F7> :GodotRunFZF<CR>
  endfunc
  augroup godot | au!
      au FileType gdscript call GodotSettings()
  augroup end
  ]])
