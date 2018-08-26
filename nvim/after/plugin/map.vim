" wengwengweng

" unmap
mapclear
map <tab> <nop>
map <space> <nop>
map <return> <nop>
map <backspace> <nop>

let keys = split('qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM`~!@#$%^&*()-=_+[]{}\;<>?/', '.\zs')

for k in keys

	exec 'map ' . k . ' <nop>'
	exec 'map <m-' . k . '> <nop>'
	exec 'map <c-' . k . '> <nop>'
	exec 'imap <m-' . k . '> <nop>'
	exec 'imap <c-' . k . '> <nop>'

endfor

for i in range(1, 9)

	exec 'map <c-' . i . '> <nop>'
	exec 'map <f' . i . '> <nop>'

endfor

" global
noremap : :
noremap <m-space> :
noremap . .
nnoremap ! :!
noremap <silent> c :redraw!<cr>
noremap <silent> <esc> <esc>:noh<cr>
inoremap <silent> <esc> <esc>
tnoremap <esc> <c-\><c-n>

" movement
noremap k gk
noremap j gj
noremap h h
noremap l l
noremap <m-h> b
noremap <m-l> e
noremap <m-up> <c-y>
noremap <m-down> <c-e>
inoremap <m-j> <c-o>gj
inoremap <m-k> <c-o>gk
inoremap <m-h> <left>
inoremap <m-l> <right>

if has('gui_macvim')

	nnoremap <ScrollWheelUp> k
	nnoremap <S-ScrollWheelUp> k
	nnoremap <C-ScrollWheelUp> k
	nnoremap <ScrollWheelDown> j
	nnoremap <S-ScrollWheelDown> j
	nnoremap <C-ScrollWheelDown> j
	nnoremap <ScrollWheelLeft> h
	nnoremap <S-ScrollWheelLeft> h
	nnoremap <C-ScrollWheelLeft> h
	nnoremap <ScrollWheelRight> l
	nnoremap <S-ScrollWheelRight> l
	nnoremap <C-ScrollWheelRight> l
	inoremap <ScrollWheelUp> <c-x><c-y>
	inoremap <S-ScrollWheelUp> <c-x><c-y>
	inoremap <C-ScrollWheelUp> <c-x><c-y>
	inoremap <ScrollWheelDown> <c-x><c-e>
	inoremap <S-ScrollWheelDown> <c-x><c-e>
	inoremap <C-ScrollWheelDown> <c-x><c-e>

else

	inoremap <up> <c-x><c-y>
	inoremap <down> <c-x><c-e>

endif

" buffer
noremap <silent> ` <c-^>
noremap <silent> - :silent! bprev<cr>
noremap <silent> = :silent! bnext<cr>

" edit
nnoremap > A
nnoremap < I
vnoremap > <esc>`>a
vnoremap < <esc>`<i
nnoremap <return> a
noremap <m-return> A<return>yo<bs><bs><esc>
vnoremap <return> s
inoremap <m-bs> <c-w>
inoremap <tab> <tab>
inoremap <return> <return>yo<bs><bs>
inoremap <m-return> <esc>mqa<return><esc>`qa<return>
inoremap <m-space> <esc>mqa<space><esc>`qa<space>
cnoremap <m-bs> <c-w>

" undo & redo
noremap <silent> u u
noremap <silent> o <c-r>
inoremap <silent> <m-u> <c-o>u
inoremap <silent> <m-o> <c-o><c-r>

" cut & copy & paste
noremap <silent> p "*p
nnoremap <silent> y "*yy
vnoremap <silent> y mq"*y`>`q
nnoremap <silent> x "*dd
vnoremap <silent> x "*d
noremap <silent> d "_dd<esc>
inoremap <silent> <m-p> <esc>"*pa

" search
nnoremap ? /
noremap <silent> <m-;> :exec 'silent! normal! N'<cr>
noremap <silent> <m-'> :exec 'silent! normal! n'<cr>

" selection
noremap v v
noremap <m-v> <c-v>
nnoremap <space> viw
vnoremap <space> <esc>
noremap <m-a> ggVG

" indent
vnoremap <tab> >
vnoremap <m-tab> <

if has('gui_vimr')
	for i in range(1, 9)
		exec 'noremap <d-' . i . '> :tabn ' . i . '<cr>'
	endfor
endif

" yo
for i in range(1, 9)
	exec 'noremap <f' . i . '> :echo "y' . repeat('o', i) . '"<cr>'
endfor

" plugins
call pair#bind()
call search#bind()
noremap <silent> <m-k> :Scroll -12<cr>
noremap <silent> <m-j> :Scroll 12<cr>
nnoremap <silent> <tab> :Browser<cr>
noremap <silent> <m-f> :CtrlP<cr>
noremap <silent> <m-t> :CtrlPTag<cr>
noremap <silent> <m-b> :CtrlPBuffer<cr>
noremap <silent> <m--> :OpenTerm<cr>
noremap <silent> <m-=> :OpenFinder<cr>
noremap <silent> / :Comment<cr>
nnoremap <silent> <m-w> :Close<cr>
nnoremap <silent> <m-[> :PrevMark<cr>
nnoremap <silent> <m-]> :NextMark<cr>
noremap <silent> w :Write<cr>
noremap m :Make<space>
noremap z :Projekt<space>

