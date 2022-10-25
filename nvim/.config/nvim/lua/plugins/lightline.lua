vim.cmd([[
let g:lightline = {
      \ 'colorscheme': 'OldHope',
      \ }

" create a custom status line for supercollider buffers
function! s:set_sclang_statusline()
  setlocal stl=
  setlocal stl+=%f
  setlocal stl+=%=
  setlocal stl+=%(%l,%c%)
  setlocal stl+=\ \|
  setlocal stl+=%24.24{scnvim#statusline#server_status()}
endfunction

augroup scnvim_stl
  autocmd!
  autocmd FileType supercollider call <SID>set_sclang_statusline()
augroup END

 let g:lightline.component_function = {
       \ 'server_status': 'scnvim#statusline#server_status',
       \ }
 
 let g:lightline.active = {
       \ 'left':  [ [ 'mode', 'paste' ],
       \          [ 'readonly', 'filename', 'modified' ] ],
       \ 'right': [ [ 'lineinfo' ],
       \            [ 'percent' ],
       \            [ 'server_status'] ]
       \ }

]])
