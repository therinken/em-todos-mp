let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <Plug>(neocomplete_start_manual_complete) =neocomplete#mappings#manual_complete()=neocomplete#mappings#popup_post()
inoremap <silent> <Plug>(neocomplete_start_auto_complete) =neocomplete#mappings#auto_complete()=neocomplete#mappings#popup_post()
inoremap <silent> <Plug>(neocomplete_start_omni_complete) 
inoremap <silent> <expr> <Plug>(neocomplete_start_unite_quick_match) unite#sources#neocomplete#start_quick_match()
inoremap <silent> <expr> <Plug>(neocomplete_start_unite_complete) unite#sources#neocomplete#start_complete()
inoremap <silent> <Plug>NERDCommenterInsert  <BS>:call NERDComment('i', "insert")
inoremap <silent> <SNR>72_AutoPairsReturn =AutoPairsReturn()
inoremap <silent> <expr> <Plug>(neosnippet_start_unite_snippet) unite#sources#neosnippet#start_complete()
inoremap <silent> <expr> <Plug>(neosnippet_jump) neosnippet#mappings#jump_impl()
inoremap <silent> <expr> <Plug>(neosnippet_expand) neosnippet#mappings#expand_impl()
inoremap <silent> <expr> <Plug>(neosnippet_jump_or_expand) neosnippet#mappings#jump_or_expand_impl()
inoremap <silent> <expr> <Plug>(neosnippet_expand_or_jump) neosnippet#mappings#expand_or_jump_impl()
inoremap <expr> <BS> neocomplete#smart_close_popup()."\"
inoremap <F1> 
snoremap  a<BS>
smap <expr> 	 neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)": "\	"
xmap  <Plug>(neosnippet_expand_target)
smap  <Plug>(neosnippet_expand_or_jump)
snoremap  a<BS>
xnoremap <silent>  :call multiple_cursors#new("v", 0)
nnoremap <silent>  :call multiple_cursors#new("n", 0)
nnoremap <silent>  :CtrlP
vmap  <Plug>(expand_region_shrink)
nnoremap   za
nnoremap $ <Nop>
nmap ,ca <Plug>NERDCommenterAltDelims
xmap ,cu <Plug>NERDCommenterUncomment
nmap ,cu <Plug>NERDCommenterUncomment
xmap ,cb <Plug>NERDCommenterAlignBoth
nmap ,cb <Plug>NERDCommenterAlignBoth
xmap ,cl <Plug>NERDCommenterAlignLeft
nmap ,cl <Plug>NERDCommenterAlignLeft
nmap ,cA <Plug>NERDCommenterAppend
xmap ,cy <Plug>NERDCommenterYank
nmap ,cy <Plug>NERDCommenterYank
xmap ,cs <Plug>NERDCommenterSexy
nmap ,cs <Plug>NERDCommenterSexy
xmap ,ci <Plug>NERDCommenterInvert
nmap ,ci <Plug>NERDCommenterInvert
nmap ,c$ <Plug>NERDCommenterToEOL
xmap ,cn <Plug>NERDCommenterNested
nmap ,cn <Plug>NERDCommenterNested
xmap ,cm <Plug>NERDCommenterMinimal
nmap ,cm <Plug>NERDCommenterMinimal
xmap ,c  <Plug>NERDCommenterToggle
nmap ,c  <Plug>NERDCommenterToggle
xmap ,cc <Plug>NERDCommenterComment
nmap ,cc <Plug>NERDCommenterComment
nmap ,bl :ls
nmap ,bq :bp | bd #
nmap ,h :bprevious
nmap ,1 :bnext
nmap ,bs :CtrlPMRU
nmap ,bm :CtrlPMixed
nmap ,bb :CtrlPBuffer
nmap ,p :CtrlP
nnoremap ,rtw :%s/\s\+$//e
nnoremap ,d :Make!
nnoremap ,c :SyntasticCheck:Errors
nnoremap ,a :Ag
nnoremap ,s :mksession
nnoremap ,  :noh
nnoremap ,l :call ToggleNumber()
nnoremap ,sv :source $MYVIMRC|:AirlineRefresh
nnoremap ,ez :vsp ~/.zshrc
nnoremap ,ev :vsp $MYVIMRC
nnoremap ,u :GundoToggle
nnoremap ,w :NERDTree
nnoremap ,m :silent make|redraw!|cw
nnoremap B ^
nnoremap E $
xmap S <Plug>VSurround
nnoremap ^ <Nop>
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
xmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
nnoremap gV '[v']
nnoremap j gj
nnoremap k gk
xmap v <Plug>(expand_region_expand)
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
snoremap <Del> a<BS>
snoremap <BS> a<BS>
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
xnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("x", "Uncomment")
nnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("n", "Uncomment")
xnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("x", "AlignBoth")
nnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("n", "AlignBoth")
xnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("x", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("n", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAppend :call NERDComment("n", "Append")
xnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("x", "Yank")
nnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("n", "Yank")
xnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("x", "Sexy")
nnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("n", "Sexy")
xnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("x", "Invert")
nnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("n", "Invert")
nnoremap <silent> <Plug>NERDCommenterToEOL :call NERDComment("n", "ToEOL")
xnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("x", "Nested")
nnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("n", "Nested")
xnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("x", "Minimal")
nnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("n", "Minimal")
xnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("x", "Toggle")
nnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("n", "Toggle")
xnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("x", "Comment")
nnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("n", "Comment")
xnoremap <silent> <Plug>(expand_region_shrink) :call expand_region#next('v', '-')
xnoremap <silent> <Plug>(expand_region_expand) :call expand_region#next('v', '+')
nnoremap <silent> <Plug>(expand_region_expand) :call expand_region#next('n', '+')
nnoremap <silent> <Plug>SurroundRepeat .
xnoremap <silent> <Plug>(neosnippet_register_oneshot_snippet) :call neosnippet#mappings#_register_oneshot_snippet()
xnoremap <silent> <Plug>(neosnippet_expand_target) :call neosnippet#mappings#_expand_target()
xnoremap <silent> <Plug>(neosnippet_get_selected_text) :call neosnippet#helpers#get_selected_text(visualmode(), 1)
snoremap <silent> <expr> <Plug>(neosnippet_jump) neosnippet#mappings#jump_impl()
snoremap <silent> <expr> <Plug>(neosnippet_expand) neosnippet#mappings#expand_impl()
snoremap <silent> <expr> <Plug>(neosnippet_jump_or_expand) neosnippet#mappings#jump_or_expand_impl()
snoremap <silent> <expr> <Plug>(neosnippet_expand_or_jump) neosnippet#mappings#expand_or_jump_impl()
nnoremap <silent> <F5> :silent !open %
vnoremap <F1> 
nnoremap <F1> 
xmap <BS> "-d
inoremap <expr>  neocomplete#cancel_popup()
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <expr>  neocomplete#undo_completion()
inoremap <expr>  neocomplete#smart_close_popup()."\"
imap <expr> 	 neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)": pumvisible() ? "\" : "\	"
imap  <Plug>(neosnippet_expand_or_jump)
inoremap <expr>  neocomplete#complete_common_string()
imap  <Plug>Isurround
inoremap <expr>  neocomplete#close_popup()
inoremap jk 
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set background=dark
set backspace=indent,eol,start
set completeopt=preview,menuone
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set foldlevelstart=10
set formatoptions=tqrn1
set gdefault
set guioptions=egm
set helplang=en
set hidden
set hlsearch
set ignorecase
set incsearch
set langmenu=none
set laststatus=2
set lazyredraw
set modelines=1
set omnifunc=htmlcomplete#CompleteTags
set ruler
set runtimepath=~/.vim,~/.vim/bundle/vim-airline/,~/.vim/bundle/ctrlp.vim/,~/.vim/bundle/emmet-vim/,~/.vim/bundle/nerdtree/,~/.vim/bundle/syntastic/,~/.vim/bundle/javascript-libraries-syntax.vim/,~/.vim/bundle/vim-jsbeautify/,~/.vim/bundle/neocomplete.vim/,~/.vim/bundle/neosnippet/,~/.vim/bundle/neosnippet-snippets/,~/.vim/bundle/vim-spacebars/,~/.vim/bundle/vim-less/,~/.vim/bundle/vim-json/,~/.vim/bundle/vim-markdown/,~/.vim/bundle/vim-javascript/,~/.vim/bundle/vim-coffee-script/,~/.vim/bundle/webapi-vim/,~/.vim/bundle/tern_for_vim/,~/.vim/bundle/vim-surround/,~/.vim/bundle/auto-pairs/,~/.vim/bundle/gundo.vim/,~/.vim/bundle/vim-expand-region/,~/.vim/bundle/vim-fugitive/,~/.vim/bundle/vim-meteor-snippets/,~/.vim/bundle/nerdcommenter/,~/.vim/bundle/vim-multiple-cursors/,~/.vim/bundle/.neobundle,/usr/local/Cellar/macvim/7.4-74/MacVim.app/Contents/Resources/vim/vimfiles,/usr/local/Cellar/macvim/7.4-74/MacVim.app/Contents/Resources/vim/runtime,/usr/local/Cellar/macvim/7.4-74/MacVim.app/Contents/Resources/vim/vimfiles/after,~/.v
set shiftwidth=4
set showcmd
set showmatch
set showtabline=2
set smartcase
set softtabstop=4
set statusline=%#warningmsg#%{SyntasticStatuslineFlag()}%*%#warningmsg#%{SyntasticStatuslineFlag()}%*
set tabline=%!airline#extensions#tabline#get()
set tabstop=4
set textwidth=79
set undofile
set wildignore=*/tmp/*,*.so,*.swp,*.zip
set wildmenu
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Developer/Experimental/Meteor/em-todos-mp
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +2 app/client/templates/home/home.html
badd +1 app/client/stylesheets/main.less
badd +0 app/client/templates/layouts/master_layout/master_layout.html
argglobal
silent! argdel *
edit app/client/templates/layouts/master_layout/master_layout.html
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <BS> =AutoPairsDelete()
inoremap <buffer> <Plug>(emmet-anchorize-summary) =emmet#util#closePopup()=emmet#anchorizeURL(1)
inoremap <buffer> <Plug>(emmet-anchorize-url) =emmet#util#closePopup()=emmet#anchorizeURL(0)
inoremap <buffer> <Plug>(emmet-remove-tag) =emmet#util#closePopup()=emmet#removeTag()
inoremap <buffer> <Plug>(emmet-split-join-tag) :call emmet#splitJoinTag()
inoremap <buffer> <Plug>(emmet-toggle-comment) =emmet#util#closePopup()=emmet#toggleComment()
inoremap <buffer> <Plug>(emmet-image-size) =emmet#util#closePopup()=emmet#imageSize()
inoremap <buffer> <Plug>(emmet-move-prev-item) :call emmet#moveNextPrevItem(1)
inoremap <buffer> <Plug>(emmet-move-next-item) :call emmet#moveNextPrevItem(0)
inoremap <buffer> <Plug>(emmet-move-prev) :call emmet#moveNextPrev(1)
inoremap <buffer> <Plug>(emmet-move-next) :call emmet#moveNextPrev(0)
inoremap <buffer> <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
inoremap <buffer> <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
inoremap <buffer> <Plug>(emmet-update-tag) =emmet#util#closePopup()=emmet#updateTag()
inoremap <buffer> <Plug>(emmet-expand-word) =emmet#util#closePopup()=emmet#expandAbbr(1,"")
inoremap <buffer> <Plug>(emmet-expand-abbr) =emmet#util#closePopup()=emmet#expandAbbr(0,"")
noremap <buffer>  :call HtmlBeautify()
vmap <buffer> c <Plug>(emmet-code-pretty)
vmap <buffer> m <Plug>(emmet-merge-lines)
nmap <buffer> A <Plug>(emmet-anchorize-summary)
nmap <buffer> a <Plug>(emmet-anchorize-url)
nmap <buffer> k <Plug>(emmet-remove-tag)
nmap <buffer> j <Plug>(emmet-split-join-tag)
nmap <buffer> / <Plug>(emmet-toggle-comment)
nmap <buffer> i <Plug>(emmet-image-size)
nmap <buffer> N <Plug>(emmet-move-prev)
nmap <buffer> n <Plug>(emmet-move-next)
vmap <buffer> D <Plug>(emmet-balance-tag-outword)
nmap <buffer> D <Plug>(emmet-balance-tag-outword)
vmap <buffer> d <Plug>(emmet-balance-tag-inward)
nmap <buffer> d <Plug>(emmet-balance-tag-inward)
nmap <buffer> u <Plug>(emmet-update-tag)
nmap <buffer> ; <Plug>(emmet-expand-word)
vmap <buffer> , <Plug>(emmet-expand-abbr)
nmap <buffer> , <Plug>(emmet-expand-abbr)
inoremap <buffer> <silent> î :call AutoPairsJump()a
inoremap <buffer> <silent> <expr> ð AutoPairsToggle()
inoremap <buffer> <silent> â =AutoPairsBackInsert()
inoremap <buffer> <silent> å =AutoPairsFastWrap()
vnoremap <buffer> <Plug>(emmet-code-pretty) :call emmet#codePretty()
vnoremap <buffer> <Plug>(emmet-merge-lines) :call emmet#mergeLines()
nnoremap <buffer> <Plug>(emmet-anchorize-summary) :call emmet#anchorizeURL(1)
nnoremap <buffer> <Plug>(emmet-anchorize-url) :call emmet#anchorizeURL(0)
nnoremap <buffer> <Plug>(emmet-remove-tag) :call emmet#removeTag()
nnoremap <buffer> <Plug>(emmet-split-join-tag) :call emmet#splitJoinTag()
nnoremap <buffer> <Plug>(emmet-toggle-comment) :call emmet#toggleComment()
nnoremap <buffer> <Plug>(emmet-image-size) :call emmet#imageSize()
nnoremap <buffer> <Plug>(emmet-move-prev-item) :call emmet#moveNextPrevItem(1)
nnoremap <buffer> <Plug>(emmet-move-next-item) :call emmet#moveNextPrevItem(0)
nnoremap <buffer> <Plug>(emmet-move-prev) :call emmet#moveNextPrev(1)
nnoremap <buffer> <Plug>(emmet-move-next) :call emmet#moveNextPrev(0)
vnoremap <buffer> <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-2)
nnoremap <buffer> <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
vnoremap <buffer> <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(2)
nnoremap <buffer> <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
nnoremap <buffer> <Plug>(emmet-update-tag) :call emmet#updateTag()
nnoremap <buffer> <Plug>(emmet-expand-word) :call emmet#expandAbbr(1,"")
vnoremap <buffer> <Plug>(emmet-expand-abbr) :call emmet#expandAbbr(2,"")
nnoremap <buffer> <Plug>(emmet-expand-abbr) :call emmet#expandAbbr(3,"")
inoremap <buffer> <silent>  =AutoPairsDelete()
imap <buffer> A <Plug>(emmet-anchorize-summary)
imap <buffer> a <Plug>(emmet-anchorize-url)
imap <buffer> k <Plug>(emmet-remove-tag)
imap <buffer> j <Plug>(emmet-split-join-tag)
imap <buffer> / <Plug>(emmet-toggle-comment)
imap <buffer> i <Plug>(emmet-image-size)
imap <buffer> N <Plug>(emmet-move-prev)
imap <buffer> n <Plug>(emmet-move-next)
imap <buffer> D <Plug>(emmet-balance-tag-outword)
imap <buffer> d <Plug>(emmet-balance-tag-inward)
imap <buffer> u <Plug>(emmet-update-tag)
imap <buffer> ; <Plug>(emmet-expand-word)
imap <buffer> , <Plug>(emmet-expand-abbr)
inoremap <buffer> <silent>   =AutoPairsSpace()
inoremap <buffer> <silent> " =AutoPairsInsert('"')
inoremap <buffer> <silent> ' =AutoPairsInsert('''')
inoremap <buffer> <silent> ( =AutoPairsInsert('(')
inoremap <buffer> <silent> ) =AutoPairsInsert(')')
nnoremap <buffer> <silent> î :call AutoPairsJump()
xnoremap <buffer> <silent> î :call AutoPairsJump()
onoremap <buffer> <silent> î :call AutoPairsJump()
nnoremap <buffer> <silent> ð :call AutoPairsToggle()
xnoremap <buffer> <silent> ð :call AutoPairsToggle()
onoremap <buffer> <silent> ð :call AutoPairsToggle()
inoremap <buffer> <silent> [ =AutoPairsInsert('[')
inoremap <buffer> <silent> ] =AutoPairsInsert(']')
inoremap <buffer> <silent> ` =AutoPairsInsert('`')
inoremap <buffer> <silent> { =AutoPairsInsert('{')
inoremap <buffer> {{ife {{#if }}{{else}}{{/if}}<Up><Up><Left>
inoremap <buffer> {{if {{#if }}{{/if}}<Up><Left>
inoremap <buffer> {{# {{#}}{{/}}<Up><Left><Left>
inoremap <buffer> {{> {{>}}<Left><Left>
inoremap <buffer> {{< {{<}}<Left><Left>
inoremap <buffer> {{! {{!}}<Left><Left>
inoremap <buffer> {{ {{}}<Left><Left>
inoremap <buffer> {{{ {{{}}}<Left><Left><Left>
inoremap <buffer> <silent> } =AutoPairsInsert('}')
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=0
setlocal colorcolumn=0
setlocal comments=s:<!--,m:\ \ \ \ ,e:-->
setlocal commentstring=<!--%s-->
setlocal complete=.,w,b,u,t,i
set concealcursor=niv
setlocal concealcursor=niv
set conceallevel=2
setlocal conceallevel=2
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'html'
setlocal filetype=html
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=10
setlocal foldmarker={{{,}}}
set foldmethod=marker
setlocal foldmethod=marker
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=Fixedgq(v:lnum,v:count)
setlocal formatoptions=tqrn1
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetCoffeeHtmlIndent(v:lnum)
setlocal indentkeys=o,O,*<Return>,<>>,{,},!^F
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,-,$
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal nomacmeta
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'spacebars'
setlocal syntax=spacebars
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=79
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 15 - ((14 * winheight(0) + 14) / 29)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
15
normal! 024|
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
