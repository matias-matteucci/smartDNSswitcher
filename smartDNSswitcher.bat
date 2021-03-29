setlocal enabledelayedexpansion
set a[0]=23.21.43.50
set a[1]=149.28.105.215
set a[2]=149.28.40.219
set a[3]=45.32.218.29
set a[4]=107.191.48.176
set a[5]=169.53.235.135
set a[6]=54.183.15.10
set a[7]=149.28.65.242
set a[8]=45.77.215.146
set /a num=%random%%%7
:loop
	set /a num2=%random%%%7
	if %num% == %num2% goto loop
echo !a[%num%]!
echo !a[%num2%]!
netsh interface ip set dns Wi-Fi static !a[%num%]!
netsh interface ip add dns name="Wi-Fi" !a[%num2%]! index=2
netsh winsock reset
netsh int ip reset
ipconfig /release
ipconfig /renew