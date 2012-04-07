" Vim syntax file
" Language: keepalived.con

if exists("b:current_syntax")
  finish
end

setlocal iskeyword+=.
setlocal iskeyword+=/
setlocal iskeyword+=:

syn keyword kpaBoolean on
syn keyword kpaBoolean off

" highlight
hi link kpaBoolean Boolean

let b:current_syntax = "keepalived"
