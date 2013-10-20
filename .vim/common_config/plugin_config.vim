" Plugins are managed by Vundle. Once VIM is open run :BundleInstall to
" install plugins.

  filetype off

" Plugins requiring no additional configuration or keymaps
  Bundle "git://github.com/tpope/vim-git.git"
  Bundle "git://github.com/altercation/vim-colors-solarized.git"
  Bundle "git://github.com/tpope/vim-endwise.git"
  Bundle "git://github.com/tpope/vim-haml.git"
  Bundle "git://github.com/pangloss/vim-javascript.git"
  Bundle "git://github.com/vim-scripts/L9.git"
  Bundle "git://github.com/tpope/vim-rake.git"
  Bundle "git://github.com/vim-ruby/vim-ruby.git"
  Bundle "git://github.com/ervandew/supertab.git"
  Bundle "git://github.com/tomtom/tcomment_vim.git"
  Bundle "git://github.com/michaeljsmith/vim-indent-object.git"
  Bundle "git://github.com/tsaleh/vim-matchit.git"
  Bundle "git://github.com/kana/vim-textobj-user.git"
  Bundle "git://github.com/nelstrom/vim-textobj-rubyblock.git"
  Bundle "git://github.com/tpope/vim-repeat.git"
  Bundle "git://github.com/vim-scripts/ruby-matchit.git"
  Bundle "git://github.com/wgibbs/vim-irblack.git"
  Bundle "git://github.com/rodjek/vim-puppet.git"
  Bundle "bling/vim-airline"

  " Ultisnip
  Bundle "git://github.com/SirVer/ultisnips.git"
  let g:UltiSnipsExpandTrigger="<c-j>"

  " YouCompleteMe
  " Need vim 7.3.584 (http://valloric.github.io/YouCompleteMe/)
  " Bundle "git://github.com/Valloric/YouCompleteMe.git"

  " CtrlP - with FuzzyFinder compatible keymaps
  Bundle "git://github.com/kien/ctrlp.vim.git"
    nnoremap <Leader>b :<C-U>CtrlPBuffer<CR>
    nnoremap <Leader>t :<C-U>CtrlP<CR>
    nnoremap <Leader>T :<C-U>CtrlPTag<CR>
    let g:ctrlp_prompt_mappings = {
        \ 'PrtSelectMove("j")':   ['<down>'],
        \ 'PrtSelectMove("k")':   ['<up>'],
        \ 'AcceptSelection("h")': ['<c-j>'],
        \ 'AcceptSelection("v")': ['<c-k>', '<RightMouse>'],
        \ }

" Less
  Bundle "git://github.com/groenewege/vim-less.git"
    au BufNewFile,BufRead *.less set filetype=less

" Coffee script
  Bundle "git://github.com/kchmck/vim-coffee-script.git"
    au BufNewFile,BufRead *.coffee set filetype=coffee

" Tagbar for navigation by tags using CTags
  Bundle "git://github.com/majutsushi/tagbar.git"
    let g:tagbar_autofocus = 1
    map <Leader>rt :!ctags --extra=+f -R *<CR><CR>
    map <Leader>. :TagbarToggle<CR>


" Ruby focused unit test (wrapped in an if-loaded because it doesn't like
" being loaded twice)
  if !exists(':RunRubyFocusedUnitTest')
    Bundle "git://github.com/drewolson/ruby_focused_unit_test_vim.git"
      nmap <Leader>ra :wa<CR> :RunAllRubyTests<CR>
      nmap <Leader>rc :wa<CR> :RunRubyFocusedContext<CR>
      nmap <Leader>rf :wa<CR> :RunRubyFocusedUnitTest<CR>
      nmap <Leader>rl :wa<CR> :RunLastRubyTest<CR>
  endif

" rails.vim, nuff' said
  Bundle "git://github.com/tpope/vim-rails.git"
    map <Leader>oc :Rcontroller<Space>
    map <Leader>ov :Rview<Space>
    map <Leader>om :Rmodel<Space>
    map <Leader>oh :Rhelper<Space>
    "map <Leader>oj :Rjavascript<Space>
    map <Leader>os :Rstylesheet<Space>
    map <Leader>oi :Rintegration<Space>


" surround for adding surround 'physics'
  Bundle "git://github.com/tpope/vim-surround.git"
    " # to surround with ruby string interpolation
    let g:surround_35 = "#{\r}"
    " - to surround with no-output erb tag
    let g:surround_45 = "<% \r %>"
    " = to surround with output erb tag
    let g:surround_61 = "<%= \r %>"

" Command-T
  Bundle 'git://git.wincent.com/command-t.git'
    let g:CommandTCancelMap='<Esc>'
    nmap <silent> <C-Space> :CommandT<CR>
    nmap <silent> <Leader><Space> :CommandT<CR>
    nmap <silent> <C-b> :CommandTBuffer<CR>

" Minibuf explorer
    "Bundle 'git://github.com/fholgado/minibufexpl.vim.git'
    "let g:miniBufExplMapWindowNavVim = 1
    "let g:miniBufExplMapWindowNavArrows = 1
    "let g:miniBufExplMapCTabSwitchBufs = 1
    "let g:miniBufExplModSelTarget = 1
    "hi MBEVisibleActive guifg=#A6DB29 guibg=fg
    "hi MBEVisibleChangedActive guifg=#F1266F guibg=fg
    "hi MBEVisibleChanged guifg=#F1266F guibg=fg
    "hi MBEVisibleNormal guifg=#5DC2D6 guibg=fg
    "hi MBEChanged guifg=#CD5907 guibg=fg
    "hi MBENormal guifg=#808080 guibg=fg

" C++ protodef & fswitch
  Bundle "git://github.com/derekwyatt/vim-protodef.git"
  Bundle "git://github.com/derekwyatt/vim-fswitch.git"
    nmap <silent> <Leader>of :FSHere<cr>
    nmap <silent> <Leader>ol :FSRight<cr>
    nmap <silent> <Leader>oL :FSSplitRight<cr>
    nmap <silent> <Leader>oh :FSLeft<cr>
    nmap <silent> <Leader>oH :FSSplitLeft<cr>
    nmap <silent> <Leader>ok :FSAbove<cr>
    nmap <silent> <Leader>oK :FSSplitAbove<cr>
    nmap <silent> <Leader>oj :FSBelow<cr>
    nmap <silent> <Leader>oJ :FSSplitBelow<cr>

filetype plugin indent on
