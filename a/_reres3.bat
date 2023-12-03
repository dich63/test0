if not "%tmpdir%"==""  goto Lt
set  tmpdir=d:\temp\~rescue~
:Lt
makepath  %tmpdir%\

if not "%dpi%"==""  goto LL
set dpi=300
:LL


rem call xdpi.bat  %dpi%  722 bmpmono %1 %tmpdir%\page.bmp
reres.exe f=%1
alchlong.exe  %1 --d0 -o %2