func! myspacevim#before() abort

  if has("win32")
    let g:spacevim_guifont = 'Terminus_(TTF)_for_Windows:h12'
    set clipboard=unnamed
    let g:vimwiki_list = [{'path': 'T:/vimwiki'}]
  endif

  if has("unix")
    let g:vimwiki_list = [{'path': '~/Documents/vimwiki'}]
  endif

  if has("gui_running")
    set lines=40 columns=120
    set clipboard=unnamedplus
  endif
endf

func! myspacevim#after() abort
  set mousemodel=extend

  let g:indentLine_concealcursor=""
  let g:indentLine_conceallevel=2

  if has("nvim")
    set inccommand=split
    if has("win32")
      call GuiFont('Terminus (TTF) for Windows:h12')
    endif
  endif
endf
