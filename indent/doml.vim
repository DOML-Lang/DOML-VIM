" Vim indent File
" Language:		DOML
" Maintainer:	Braedon Wooding <braedonww@gmail.com> https://github.com/DOML-DataOrientedMarkupLanguage/DOML-VIM
" Last Change:  2017-10-09 (YY-MM-DD)

" 0. Init

" Only load if no other indentation is done
if exists("b:did_indent")
	finish
endif

finish

let b:did_indent = 1

setlocal nolisp
setlocal autoindent

setlocal indentexpr=GetDOMLIndent(v:lnum)
setlocal indentkeys=;,@,=

" Only build function once
if exists("*GetDOMLIndent")
	finish
endif

function! s:get_line_trimmed(lnum)
	" Get the line without any comments
	" Use syntax highlighting attributes when possible
	let line = getline(a:lnum)
	let line_len = strlen(line)
	if has('syntax_items')
		" If the last character is a comment do a binary search
		if synIDattr(synID(a:lnum, line_len, 1), "name") =~ 'Comment'

