set n=0
adb connect 127.0.0.1:7555

:arknight
set /a r1=%random%%%10+5
echo r1 = %r1%
adb shell input tap 1275 750
ping 127.0.0.1 -n %r1%

adb shell input tap 1250 600
ping 127.0.0.1 -n 90

adb shell input tap 1275 750
set /a r2=%random%%%10+10
echo r2 = %r2%
ping 127.0.0.1 -n %r2%

set /a n+=1
if %n%==100 exit
goto arknight
