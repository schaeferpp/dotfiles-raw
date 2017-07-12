set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set whichwrap+=<,>,h,l,[,]
set cinoptions=(0,u0,=2,:2,t0
set smartindent
set cinkeys-=0#

let b:indentType = ""
if b:indentType == "gnu"
    setlocal cinoptions=>4,n-2,{2,^-2,:2,=2,g0,h2,p5,t0,+2,(0,u0,w1,m1
    setlocal shiftwidth=2
    setlocal tabstop=8
endif
