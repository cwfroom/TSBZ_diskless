@echo off
color 0a
title Loading...
prompt  请稍候……$_
@ver | find "Microsoft Windows 2000" && goto start
@echo 本程序仅支持无盘机Windows2000系统,请勿在其它计算机上运行!
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
echo 计算机名:%computername% >> files\log.cwf
echo 成功启动 >> files\log.cwf
net time \\192.168.99.5 | find "\\192.168.99.5 的当前时间是" >> files\log.cwf
echo 计算机名:%computername% >> \\192.168.99.5\zqftp\cwf\log.txt
net time \\192.168.99.5 | find "\\192.168.99.5 的当前时间是" >> \\192.168.99.5\zqftp\cwf\log.txt
echo ============================ >> \\192.168.99.5\zqftp\cwf\log.txt
cls
@echo 正在检测服务器状态...
@ping lc02 | find "192.168.99.5" && echo                           服务器状态:正常 > files\temp.cwf || echo                           服务器状态:无效 > files\temp.cwf
goto menu

:menu
title 唐山八中无盘机优化脚本 V2.0

cls
@echo ==========================================
@echo =======唐山八中无盘机优化脚本 V2.0 =======
@echo ==========================================
@echo  (C)2010 Cwf123.com,All rights reserved.
@echo                                  -Loser
@echo                           当前计算机:%computername% & @type files\temp.cwf 
@echo CAUTION:部分功能需要注销重新登录才能生效！
@echo a:执行全部命令
@echo 1:清除系统自带的威金病毒（如果要使用Word或Winrar必选）
@echo 2:打开桌面（可随时切换到“欢迎您登录”）
@echo 3:安装搜狗拼音输入法
@echo 4:CPU软超频到1.05Ghz（需要打开桌面）[名扬剑仙提供]
@echo h:查看历史记录
@echo f:保存更改并注销
@echo e:不保存更改并退出
@echo l:查看授权许可
@set /p select=请输入相应代号并按回车确认：
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
copy files\kill.bat C:\docume~1\zq\「开始」菜单\程序\启动
copy files\killed.vbs C:\cwf
@echo 清除威金病毒 > files\log.cwf
net time \\192.168.99.5 | find "\\192.168.99.5 的当前时间是" >> files\log.cwf
goto end2

:explorer
copy files\pskill.exe C:\winnt
del C:\Docume~1\zq\桌面\BootXPv2.50.lnk
pause
regedit /s files\exp.reg
regedit /s files\wallpaper.reg
copy files\img0.bmp C:\cwf\ /y
copy files\欢迎您登录.bat C:\Docume~1\zq\桌面
explorer
@echo 打开桌面 > files\log.cwf
net time \\192.168.99.5 | find "\\192.168.99.5 的当前时间是" >> files\log.cwf
goto end2


:sginput
cls
if not exist C:\cwf md C:\cwf
xcopy files\sgpy C:\cwf\sgpy\ /e /a
start C:\cwf\sgpy\sgpy.exe
@echo 安装搜狗拼音输入法 > files\log.cwf
net time \\192.168.99.5 | find "\\192.168.99.5 的当前时间是" >> files\log.cwf
goto end1 

:cpu
if not exist C:\cwf md C:\cwf
xcopy files\CrystalCPUID C:\cwf\CrystalCPUID\ /e /a
C:\cwf\CrystalCPUID\CrystalCPUID.exe /F15 /P1 /E
@echo CPU超频 > files\log.cwf
net time \\192.168.99.5 | find "\\192.168.99.5 的当前时间是" >> files\log.cwf
goto end1

:history
cls
more files\log.cwf
@echo 查看了历史记录 > files\log.cwf
net time \\192.168.99.5 | find "\\192.168.99.5 的当前时间是" >> files\log.cwf
goto end1

:license
cls
more files\license.cwf
@echo 查看了授权许可 > files\log.cwf
net time \\192.168.99.5 | find "\\192.168.99.5 的当前时间是" >> files\log.cwf
goto end1

:end1
@set /p moe=m返回目录，e退出：
@if %moe%==m goto menu
@if %moe%==e goto exit

:end2
@set /p moe2=[需要注销]m返回目录,f注销：
@if %moe2%==m goto menu
@if %moe2%==f goto finish

:exit
del files\temp.cwf
@echo 成功退出 >> files\log.cwf
net time \\192.168.99.5 | find "\\192.168.99.5 的当前时间是" >> files\log.cwf
@echo ============================ >> files\log.cwf
exit

:finish

del files\temp.cwf
del files\temp.cwf
@echo 成功注销 >> files\log.cwf
net time \\192.168.99.5 | find "\\192.168.99.5 的当前时间是" >> files\log.cwf
@echo ============================ >> files\log.cwf
files\shutdown.exe /?
cls
files\shutdown.exe /l

:error1
@echo 计算机名:%computername% >> files\log.cwf
@echo 错误1:不正确的环境判断 >> files\log.cwf
net time \\%computername% | find "的当前时间是" >> files\log.cwf
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
copy files\kill.bat C:\docume~1\zq\「开始」菜单\程序\启动
copy files\killed.vbs C:\cwf

copy files\pskill.exe C:\winnt
del C:\Docume~1\zq\桌面\BootXPv2.50.lnk
regedit /s files\exp.reg
cls
regedit /s files\wallpaper.reg
copy files\img0.bmp C:\cwf /y
copy files\欢迎您登录.bat C:\Docume~1\zq\桌面

cls
xcopy files\sgpy C:\cwf\sgpy\ /e /a
copy files\sgpy.lnk C:\docume~1\zq\「开始」菜单\程序\启动 

xcopy files\CrystalCPUID C:\cwf\CrystalCPUID\ /e /a
copy files\cpu.lnk C:\docume~1\zq\「开始」菜单\程序\启动

regedit /s files\first.reg
@echo 全部执行 > files\log.cwf
net time \\192.168.99.5 | find "\\192.168.99.5 的当前时间是" >> files\log.cwf
goto finish 