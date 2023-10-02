if exists('g:loaded_mathmode')
	finish
endif
let g:loaded_mathmode = 1

if !exists('g:mathmode_auto_detect')
	let g:mathmode_auto_detect = 1
endif

if !exists('g:mathmode_insert_leave')
	let g:mathmode_insert_leave = 1
endif

if !exists('g:mathmode_macism_path')
	let g:mathmode_macism_path = 'macism'
endif

if !exists('g:mathmode_normal_ime')
	let g:mathmode_normal_ime = 'com.apple.keylayout.ABC'
endif

if !exists('g:mathmode_cjk_ime')
	let g:mathmode_cjk_ime= 'im.rime.inputmethod.Squirrel.Hans'
endif

function s:switch_normal_ime()
	call s:switch_ime(g:mathmode_normal_ime)
endfunction

function s:switch_cjk_ime(cjk_mode)
	if a:cjk_mode
		call s:switch_ime(g:mathmode_cjk_ime)
	else
		call s:switch_ime(g:mathmode_normal_ime)
	endif
endfunction

function s:switch_ime(ime)
	execute "silent !" . g:mathmode_macism_path . " '" . a:ime . "' > /dev/null"
endfunction

function! s:insert_entered()
	if g:mathmode_auto_detect
		let l:char = getline('.')[col('.') - 2]
		let l:cjk_mode = (l:char >= "\x80" || l:char == "$")
	else
		let l:cjk_mode = 1
	endif
	if exists('*vimtex#syntax#in_mathzone') && g:loaded_vimtex
		if vimtex#syntax#in_mathzone()
			let l:cjk_mode = 0
		endif
	endif
	call s:switch_cjk_ime(l:cjk_mode)
endfunction

function! s:insert_leave()
	call s:switch_normal_ime()
endfunction

augroup MATHMODE
	autocmd!
	autocmd InsertEnter,CursorMovedI * :call s:insert_entered()
	autocmd InsertLeave * :call s:insert_leave()
augroup END
