func! myspacevim#before() abort

  if has("win32")
    let g:spacevim_guifont = 'Terminus_(TTF)_for_Windows:h11'
    set clipboard+=unnamedplus
  endif

  if has("gui_running")
    set lines=40 columns=120
  endif
endf

func! myspacevim#after() abort
  set mousemodel=extend

  if has("nvim")
    set inccommand=split
  endif
endf
