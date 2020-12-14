"      _             _      __     ___                    
"     | | ___  _ __ ( )___  \ \   / (_)_ __ ___  _ __ ___ 
"  _  | |/ _ \| '_ \|// __|  \ \ / /| | '_ ` _ \| '__/ __|
" | |_| | (_) | | | | \__ \   \ V / | | | | | | | | | (__ 
"  \___/ \___/|_| |_| |___/    \_/  |_|_| |_| |_|_|  \___|
"                                                        
"




" --------------------------- Important  {{{
" behave very Vi compatible (not advisable) 
set nocp

" list of flags to specify Vi compatibility
set cpo=aABceFs

" use Insert mode as the default mode
set noim

" list of directories used for runtime files and plugins
set rtp=/home/jon/.vim,/usr/share/vim/vimfiles,/usr/share/vim/vim82,/usr/share/vim/vimfiles/after,/home/jon/.vim/after 

" list of directories used for plugin packages
set pp=/home/jon/.vim,/usr/share/vim/vimfiles,/usr/share/vim/vim82,/usr/share/vim/vimfiles/after,/home/jon/.vim/after

" name of the main help file
set hf=/usr/share/vim/vim82/doc/help.txt  

" }}}
" -------------------------- moving around, searching and patterns  {{{
" list of flags specifying which commands wrap to another line
set ww=b,s

" many jump commands move the cursor to the first non-blank character of a line 
set sol

" nroff macro names that separate paragraphs
set para=IPLPPPQPP\ TPHPLIPpLpItpplpipbp

" nroff macro names that separate sections
set sect=SHNHH\ HUnhsh

" list of directory names used for file searching
set pa=.,/usr/include,,

 " }}}
" -------------------------- Tags {{{
" }}}
" --------------------------- Display Text  {{{
" show the line number for each line
set nu

" show the relative line number for each line
set rnu

" number of lines in the display 
set lines=39

" width of the display 
set co=158

" number of lines to scroll for CTRL-U and CTRL-D
set scr=9

" long lines wrap
set wrap

" number of columns to use for the line number 
set nuw=4

" }}}

