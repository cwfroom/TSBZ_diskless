@echo off
color 0a
title Loading...
prompt  ���Ժ򡭡�$_
@ver | find "Microsoft Windows 2000" && goto start
@echo �������֧�����̻�Windows2000ϵͳ,���������������������!
pause
goto error1
 
:start
del files\temp.cwf
files\sc.exe delete tlntsvr
net share c$ /del
net share ipc$ /del
regedit /s files\pskill.reg
files\pskill -t ITEpm.exe
files\pskill -t explorer.exe
files\pskill -t iexplore.exe
echo �������:%computername% >> files\log.cwf
echo �ɹ����� >> files\log.cwf
net time \\192.168.99.5 | find "\\192.168.99.5 �ĵ�ǰʱ����" >> files\log.cwf
echo �������:%computername% >> \\192.168.99.5\zqftp\cwf\log.txt
net time \\192.168.99.5 | find "\\192.168.99.5 �ĵ�ǰʱ����" >> \\192.168.99.5\zqftp\cwf\log.txt
echo ============================ >> \\192.168.99.5\zqftp\cwf\log.txt
cls
@echo ���ڼ�������״̬...
@ping lc02 | find "192.168.99.5" && echo                           ������״̬:���� > files\temp.cwf || echo                           ������״̬:��Ч > files\temp.cwf
goto menu

:menu
title ��ɽ�������̻��Ż��ű� V2.0

cls
@echo ==========================================
@echo =======��ɽ�������̻��Ż��ű� V2.0 =======
@echo ==========================================
@echo  (C)2010 Cwf123.com,All rights reserved.
@echo                                  -Loser
@echo                           ��ǰ�����:%computername% & @type files\temp.cwf 
@echo CAUTION:���ֹ�����Ҫע�����µ�¼������Ч��
@echo a:ִ��ȫ������
@echo 1:���ϵͳ�Դ������𲡶������Ҫʹ��Word��Winrar��ѡ��
@echo 2:�����棨����ʱ�л�������ӭ����¼����
@echo 3:��װ�ѹ�ƴ�����뷨
@echo 4:CPU��Ƶ��1.05Ghz����Ҫ�����棩[���｣���ṩ]
@echo h:�鿴��ʷ��¼
@echo f:������Ĳ�ע��
@echo e:��������Ĳ��˳�
@echo l:�鿴��Ȩ���
@set /p select=��������Ӧ���Ų����س�ȷ�ϣ�
@if %select%==a goto all
@if %select%==1 goto killvirus
@if %select%==2 goto explorer
@if %select%==3 goto sginput
@if %select%==4 goto cpu
@if %select%==h goto history
@if %select%==f goto finish
@if %select%==e goto exit
@if %select%==l goto license


:killvirus
files\pskill -t Logo1_.exe
files\pskill -t rundl132.exe
files\pskill -t winword.exe
files\pskill -t winrar.exe
files\pskill -t realplay.exe
if exist C:\winnt\Logo1_.exe del C:\winnt\Logo1_.exe /f /q
if exist C:\winnt\rundl132.exe del C:\winnt\rundl132.exe /f /q
md C:\winnt\Logo1_.exe
md C:\winnt\Logo1_.exe\protected..\
attrib C:\winnt\Logo1.exe.exe +s +h +r
md C:\winnt\rundl132.exe\protected..\
attrib C:\winnt\rundl132.exe +s +h +r
md C:\cwf
copy files\winrar.exe C:\cwf
copy files\realplay.exe C:\cwf
cls
copy files\winword.exe C:\cwf
copy files\kill.bat C:\docume~1\zq\����ʼ���˵�\����\����
copy files\killed.vbs C:\cwf
@echo ������𲡶� > files\log.cwf
net time \\192.168.99.5 | find "\\192.168.99.5 �ĵ�ǰʱ����" >> files\log.cwf
goto end2

:explorer
copy files\pskill.exe C:\winnt
del C:\Docume~1\zq\����\BootXPv2.50.lnk
pause
regedit /s files\exp.reg
regedit /s files\wallpaper.reg
copy files\img0.bmp C:\cwf\ /y
copy files\��ӭ����¼.bat C:\Docume~1\zq\����
explorer
@echo ������ > files\log.cwf
net time \\192.168.99.5 | find "\\192.168.99.5 �ĵ�ǰʱ����" >> files\log.cwf
goto end2


:sginput
cls
if not exist C:\cwf md C:\cwf
xcopy files\sgpy C:\cwf\sgpy\ /e /a
start C:\cwf\sgpy\sgpy.exe
@echo ��װ�ѹ�ƴ�����뷨 > files\log.cwf
net time \\192.168.99.5 | find "\\192.168.99.5 �ĵ�ǰʱ����" >> files\log.cwf
goto end1 

:cpu
if not exist C:\cwf md C:\cwf
xcopy files\CrystalCPUID C:\cwf\CrystalCPUID\ /e /a
C:\cwf\CrystalCPUID\CrystalCPUID.exe /F15 /P1 /E
@echo CPU��Ƶ > files\log.cwf
net time \\192.168.99.5 | find "\\192.168.99.5 �ĵ�ǰʱ����" >> files\log.cwf
goto end1

:history
cls
more files\log.cwf
@echo �鿴����ʷ��¼ > files\log.cwf
net time \\192.168.99.5 | find "\\192.168.99.5 �ĵ�ǰʱ����" >> files\log.cwf
goto end1

:license
cls
more files\license.cwf
@echo �鿴����Ȩ��� > files\log.cwf
net time \\192.168.99.5 | find "\\192.168.99.5 �ĵ�ǰʱ����" >> files\log.cwf
goto end1

:end1
@set /p moe=m����Ŀ¼��e�˳���
@if %moe%==m goto menu
@if %moe%==e goto exit

:end2
@set /p moe2=[��Ҫע��]m����Ŀ¼,fע����
@if %moe2%==m goto menu
@if %moe2%==f goto finish

:exit
del files\temp.cwf
@echo �ɹ��˳� >> files\log.cwf
net time \\192.168.99.5 | find "\\192.168.99.5 �ĵ�ǰʱ����" >> files\log.cwf
@echo ============================ >> files\log.cwf
exit

:finish

del files\temp.cwf
del files\temp.cwf
@echo �ɹ�ע�� >> files\log.cwf
net time \\192.168.99.5 | find "\\192.168.99.5 �ĵ�ǰʱ����" >> files\log.cwf
@echo ============================ >> files\log.cwf
files\shutdown.exe /?
cls
files\shutdown.exe /l

:error1
@echo �������:%computername% >> files\log.cwf
@echo ����1:����ȷ�Ļ����ж� >> files\log.cwf
net time \\%computername% | find "�ĵ�ǰʱ����" >> files\log.cwf
@echo ============================ >> files\log.cwf
exit

:all
files\pskill -t Logo1_.exe
files\pskill -t rundl132.exe
files\pskill -t winword.exe
files\pskill -t winrar.exe
files\pskill -t realplay.exe
if exist C:\winnt\Logo1_.exe del C:\winnt\Logo1_.exe /f /q
if exist C:\winnt\rundl132.exe del C:\winnt\rundl132.exe /f /q
md C:\winnt\Logo1_.exe
md C:\winnt\Logo1_.exe\protected..\
attrib C:\winnt\Logo1.exe +s +h +r
md C:\winnt\rundl132.exe
md C:\winnt\rundl132.exe\protected..\
attrib C:\winnt\rundl132.exe +s +h +r
md C:\cwf
copy files\winrar.exe C:\cwf
copy files\realplay.exe C:\cwf
cls
copy files\winword.exe C:\cwf
copy files\kill.bat C:\docume~1\zq\����ʼ���˵�\����\����
copy files\killed.vbs C:\cwf

copy files\pskill.exe C:\winnt
del C:\Docume~1\zq\����\BootXPv2.50.lnk
regedit /s files\exp.reg
cls
regedit /s files\wallpaper.reg
copy files\img0.bmp C:\cwf /y
copy files\��ӭ����¼.bat C:\Docume~1\zq\����

cls
xcopy files\sgpy C:\cwf\sgpy\ /e /a
copy files\sgpy.lnk C:\docume~1\zq\����ʼ���˵�\����\���� 

xcopy files\CrystalCPUID C:\cwf\CrystalCPUID\ /e /a
copy files\cpu.lnk C:\docume~1\zq\����ʼ���˵�\����\����

regedit /s files\first.reg
@echo ȫ��ִ�� > files\log.cwf
net time \\192.168.99.5 | find "\\192.168.99.5 �ĵ�ǰʱ����" >> files\log.cwf
goto finish 