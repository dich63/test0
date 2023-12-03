if not "%tmpdir%"==""  goto Lt
set  tmpdir=d:\temp\~rescue~
:Lt
makepath  %tmpdir%\

if not "%dpi%"==""  goto LL
set dpi=300
:LL


call xdpi.bat  %dpi%  722 bmpmono %1 %tmpdir%\page.bmp
reres.exe f=%tmpdir%\page.bmp
alchlong.exe %tmpdir%\pagev.bmp %tmpdir%\pagev.bmp -w0 -o %2%1 
alchlong.exe  %tmpdir%\pagev.bmp --d0 -o %2%1 
