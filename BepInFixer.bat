net stop "LMIGuardianSvc"
TIMEOUT /T 2  
net stop "Hamachi2Svc" 

del "C:\Program Files (x86)\LogMeIn Hamachi\x64\LMIGuardianSvc.exe" 
del "C:\Program Files (x86)\LogMeIn Hamachi\LMIGuardianSvc.exe"
del "C:\Program Files (x86)\LogMeIn Hamachi\hamachi-2-ui.exe"



TIMEOUT /T 2  
Xcopy "C:\Users\anas2\AppData\Local\LogMeIn Hamachi\hamachi-22.exe" "C:\Program Files (x86)\LogMeIn Hamachi\x64" /C  
TIMEOUT /T 2  
del "C:\Program Files (x86)\LogMeIn Hamachi\x64\hamachi-2.exe"  
TIMEOUT /T 2 
ren "C:\Program Files (x86)\LogMeIn Hamachi\x64\hamachi-22.exe" hamachi-2.exe  
TIMEOUT /T 2  
net start "Hamachi2Svc"

