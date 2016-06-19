if exists("current_compiler")
  finish
endif
let current_compiler = "clang"

if exists(":CompilerSet") != 2
  command -nargs=* CompilerSet setlocal <args>
endif

let s:save_cpo = &cpo
set cpo-=C

CompilerSet errorformat=%f:%l:%c:\ %t%s:\ %m

let &cpo = s:save_cpo
unlet s:save_cpo
