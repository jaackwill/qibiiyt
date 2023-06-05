@echo off

set "desktopFolder=%USERPROFILE%\Desktop"

echo Memulai pemindahan folder...

rem Folder pertama
set "source1=%desktopFolder%\qibiiyt\Docqibiinew"
set "destination1=%desktopFolder%"
echo Memindahkan folder qibiiyt Docqibiinew...
move "%source1%" "%destination1%"

rem Folder kedua (Extensions)
set "source2=%desktopFolder%\qibiiyt\Extensions"
set "destination2=C:\"
echo Memindahkan folder Extensions...
move "%source2%" "%destination2%"

echo Pemindahan folder selesai!
pause

echo Menghapus file batch...
ping 127.0.0.1 -n 2 > nul
del "%~f0"
