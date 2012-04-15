@if not exist "%HOME%" @set HOME=%HOMEDRIVE%%HOMEPATH%
@if not exist "%HOME%" @set HOME=%USERPROFILE%

:: Set the current directory as the base directory. Make appropriate links
@set BASE_DIR=%CD%
:: call git clone --recursive -b 3.0 git://github.com/spf13/spf13-vim.git %BASE_DIR%
call mkdir "%BASE_DIR%\.vim\bundle"
call mklink /J "%HOME%\.vim" "%BASE_DIR%\.vim"
call mklink "%HOME%\.vimrc" "%BASE_DIR%\.vimrc"
call mklink "%HOME%\_vimrc" "%BASE_DIR%\.vimrc"

call git clone http://github.com/gmarik/vundle.git "%HOME%/.vim/bundle/vundle"
