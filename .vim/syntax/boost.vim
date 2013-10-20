" Vim syntax file
" Name:          boost.vim (syntax)
" Description:   Syntax highlighting for boost in C++
" Version:       1.0
" Author:
" Updates:
"
" License:       You may redistribute this plugin under the same terms as Vim
"                itself.

if &compatible || v:version < 700
    finish
endif

syn keyword BoostNamespace
	    \ boost

syn keyword StdNamespace
	    \ std

syn keyword BoostIdentifiers
	    \ bind singal format ptr_vector ptr_list ptr_map

syn keyword StdIdentifiers
	    \ vector map list deque
	    \ find_if for_each

hi def link BoostNamespace             String
hi def link StdNamespace               String
hi def link StdIdentifiers             Include
hi def link BoostIdentifiers           Number


