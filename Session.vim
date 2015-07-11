let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Sites/simple_form_datetimepicker
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +58 vendor/assets/javascripts/simple_form_datetimepicker/bootstrap-datetimepicker.js
badd +25 ~/Sites/ayyo-weekends/config/deploy/staging.rb
badd +233 ~/Sites/the_song_market/app/models/user.rb
badd +14 ~/Sites/polyblock/app/assets/javascripts/polyblock/polyblock.js.coffee
badd +6 ~/Sites/polyblock/app/views/polyblock/_editor_bar.html.erb
badd +16 ~/Sites/polyblock/test/dummy/config/environments/test.rb
badd +9 ~/Sites/polyblock/lib/polyblock/capybara_helpers.rb
badd +5 ~/Sites/polyblock/config/routes.rb
badd +4 ~/Sites/polyblock/test/dummy/config/routes.rb
badd +12 ~/Sites/polyblock/test/dummy/app/controllers/home_controller.rb
badd +6 ~/Sites/polyblock/test/dummy/app/views/home/new_systemwide_blocks.html.haml
badd +4 ~/Sites/polyblock/test/dummy/app/views/home/new_systemwide_block.html.haml
badd +37 ~/Sites/polyblock/test/dummy/spec/features/blocks_spec.rb
badd +13 ~/Sites/polyblock/app/controllers/polyblock/polyblocks_controller.rb
badd +15 ~/Sites/polyblock/app/models/polyblock/block.rb
badd +2 ~/Sites/polyblock/lib/polyblock/version.rb
badd +17 ~/Sites/polyblock/polyblock.gemspec
badd +21 ~/Sites/ayyo-weekends/config/deploy.rb
badd +43 ~/Sites/ayyo-weekends/Gemfile
badd +2 lib/simple_form_datetimepicker/version.rb
badd +1 simple_form_datetimepicker.gemspec
argglobal
silent! argdel *
edit vendor/assets/javascripts/simple_form_datetimepicker/bootstrap-datetimepicker.js
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1226 - ((14 * winheight(0) + 30) / 60)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1226
normal! 011|
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOc
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
let g:this_obsession = v:this_session
unlet SessionLoad
" vim: set ft=vim :
