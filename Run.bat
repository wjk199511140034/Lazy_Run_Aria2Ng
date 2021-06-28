@echo off 
if "%1" == "h" goto begin 
mshta vbscript:createobject("wscript.shell").run("%~nx0 h",0)(window.close)&&exit 
:begin 

@echo off
tasklist | find /i "aria2c.exe"
if "%errorlevel%" =="1" (goto f) else (goto e)

:f
echo aria2.exe 不存在
aria2c --conf-path=aria2.conf -D
start index.html
pause
exit

:e
echo aria2.exe 运行中
start index.html
pause
exit