" Vim syntax file
" Language: keepalived.con

if exists("b:current_syntax")
  finish
end

setlocal iskeyword+=.
setlocal iskeyword+=/
setlocal iskeyword+=:

syn region kpaBlock start=+^+ end=+{+ contains=kpaComment,kpaDirectiveBlock,kpaDirectiveImportant oneline
syn match kpaComment ' *#.*$'

syn keyword kpaBoolean on
syn keyword kpaBoolean off

syn keyword kpaDirectiveBlock global_defs         contained
syn keyword kpaDirectiveBlock vrrp_instance       contained
syn keyword kpaDirectiveBlock virtual_server      contained
syn keyword kpaDirectiveBlock HTTP_GET            contained
syn keyword kpaDirectiveBlock SSL_GET             contained

syn keyword kpaDirectiveImportant notification_email
syn keyword kpaDirectiveImportant virtual_ipaddress
syn keyword kpaDirectiveImportant real_server
syn keyword kpaDirectiveImportant sorry_server
syn keyword kpaDirectiveImportant authentication 
syn keyword kpaDirectiveImportant url 

syn keyword kpaDirective notification_email_from
syn keyword kpaDirective smtp_server
syn keyword kpaDirective smtp_connect_timeout
syn keyword kpaDirective router_id
syn keyword kpaDirective state
syn keyword kpaDirective interface
syn keyword kpaDirective virtual_router_id
syn keyword kpaDirective priority
syn keyword kpaDirective advert_int
syn keyword kpaDirective delay_loop
syn keyword kpaDirective lb_algo
syn keyword kpaDirective lb_kind
syn keyword kpaDirective nat_mask
syn keyword kpaDirective persistence_timeout
syn keyword kpaDirective protocol
syn keyword kpaDirective weight
syn keyword kpaDirective connect_timeout
syn keyword kpaDirective nb_get_retry
syn keyword kpaDirective delay_before_retry

syn keyword kpaVariable  path
syn keyword kpaVariable  digest

" highlight
hi link kpaComment Comment
hi link kpaVariable PreProc
hi link kpaBlock Normal
hi link kpaString String

hi link kpaBoolean Boolean
hi link kpaDirectiveBlock Statement
hi link kpaDirectiveImportant Type
hi link kpaDirective Identifier

let b:current_syntax = "keepalived"
