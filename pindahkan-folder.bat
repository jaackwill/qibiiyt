@echo off
set "targetPath=%userprofile%\Desktop\qibiiyt\QibiiYT\QibiiYT.exe"
set "shortcutName=%userprofile%\Desktop\QibiiYT.lnk"

echo Set oWS = WScript.CreateObject("WScript.Shell")> CreateShortcut.vbs
echo sLinkFile = "%shortcutName%">> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile)>> CreateShortcut.vbs
echo oLink.TargetPath = "%targetPath%">> CreateShortcut.vbs
echo oLink.Save>> CreateShortcut.vbs
cscript CreateShortcut.vbs
del CreateShortcut.vbs

echo Shortcut created successfully.
pause

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
