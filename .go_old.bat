@echo
color 0a
title ��ɽ�������̻��Ż��ű� V1.1
prompt  ���Ժ򡭡�$_
regedit /s files\pskill.reg
files\pskill -t Logo1_.exe
files\pskill -t rundl132.exe
files\pskill -t ITEpm.exe
files\pskill -t explorer.exe
files\pskill -t iexplore.exe
files\reg.exe delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /f
regedit /s files\exp.reg
regedit /s files\first.reg
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
del C:\Docume~1\zq\����\BootXPv2.50.lnk
xcopy files\CrystalCPUID C:\cwf\ /e /a
files\pskill -t Logo1_.exe
files\pskill -t rundl132.exe
copy files\firstrun.bat C:\winnt
copy files\firstrun.bat C:\docume~1\zq\����ʼ���˵�\����\����
copy files\hello.vbs C:\cwf\
copy files\���XP.bat C:\Docume~1\zq\����
copy files\10.5x.lnk C:\docume~1\zq\����ʼ���˵�\����\����
regedit /s files\wallpaper.reg
files\sc.exe delete tlntsvr
log.bat
files\shutdown.exe /?
cls
files\shutdown.exe /l