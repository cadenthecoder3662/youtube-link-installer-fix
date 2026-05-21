@echo off
cd /d "%USERPROFILE%"

powershell -command "Add-Type -AssemblyName Microsoft.VisualBasic; [Microsoft.VisualBasic.Interaction]::MsgBox('...hello %USERNAME%.', 'OKOnly,SystemModal', '  ')"
powershell -command "Add-Type -AssemblyName Microsoft.VisualBasic; [Microsoft.VisualBasic.Interaction]::MsgBox('I know what you are %USERNAME%.', 'OKOnly,SystemModal', '  ')"

set score=0

powershell -command "Add-Type -AssemblyName Microsoft.VisualBasic; $r = [Microsoft.VisualBasic.Interaction]::MsgBox('Are you a furry %USERNAME%?', 'YesNo,SystemModal', '  '); if ($r -eq 6) { exit 0 } else { exit 1 }"
if %errorlevel%==0 (set /a score+=1)
powershell -command "Add-Type -AssemblyName Microsoft.VisualBasic; [Microsoft.VisualBasic.Interaction]::MsgBox('I already knew that %USERNAME%.', 'OKOnly,SystemModal', '  ')"

powershell -command "Add-Type -AssemblyName Microsoft.VisualBasic; $r = [Microsoft.VisualBasic.Interaction]::MsgBox('Do you have a fursona %USERNAME%?', 'YesNo,SystemModal', '  '); if ($r -eq 6) { exit 0 } else { exit 1 }"
if %errorlevel%==0 (set /a score+=1)
powershell -command "Add-Type -AssemblyName Microsoft.VisualBasic; [Microsoft.VisualBasic.Interaction]::MsgBox('I have seen your fursona %USERNAME%. It watches me back.', 'OKOnly,SystemModal', '  ')"

powershell -command "Add-Type -AssemblyName Microsoft.VisualBasic; $r = [Microsoft.VisualBasic.Interaction]::MsgBox('Have you ever worn a fursuit %USERNAME%?', 'YesNo,SystemModal', '  '); if ($r -eq 6) { exit 0 } else { exit 1 }"
if %errorlevel%==0 (set /a score+=1)
powershell -command "Add-Type -AssemblyName Microsoft.VisualBasic; [Microsoft.VisualBasic.Interaction]::MsgBox('There is one in your closet right now %USERNAME%. Check.', 'OKOnly,SystemModal', '  ')"

powershell -command "Add-Type -AssemblyName Microsoft.VisualBasic; $r = [Microsoft.VisualBasic.Interaction]::MsgBox('Do you watch furry content %USERNAME%... be honest.', 'YesNo,SystemModal', '  '); if ($r -eq 6) { exit 0 } else { exit 1 }"
if %errorlevel%==0 (set /a score+=1)
powershell -command "Add-Type -AssemblyName Microsoft.VisualBasic; [Microsoft.VisualBasic.Interaction]::MsgBox('Your browser history does not lie %USERNAME%.', 'OKOnly,SystemModal', '  ')"

powershell -command "Add-Type -AssemblyName Microsoft.VisualBasic; $r = [Microsoft.VisualBasic.Interaction]::MsgBox('%USERNAME%... do your friends know you are a furry?', 'YesNo,SystemModal', '  '); if ($r -eq 6) { exit 0 } else { exit 1 }"
if %errorlevel%==0 (set /a score+=1)
powershell -command "Add-Type -AssemblyName Microsoft.VisualBasic; [Microsoft.VisualBasic.Interaction]::MsgBox('They do now %USERNAME%.', 'OKOnly,SystemModal', '  ')"

powershell -command "Add-Type -AssemblyName Microsoft.VisualBasic; $r = [Microsoft.VisualBasic.Interaction]::MsgBox('Does your fursona visit you in your dreams %USERNAME%?', 'YesNo,SystemModal', '  '); if ($r -eq 6) { exit 0 } else { exit 1 }"
if %errorlevel%==0 (set /a score+=1)
powershell -command "Add-Type -AssemblyName Microsoft.VisualBasic; [Microsoft.VisualBasic.Interaction]::MsgBox('It visits me too %USERNAME%. Every night.', 'OKOnly,SystemModal', '  ')"

powershell -command "Add-Type -AssemblyName Microsoft.VisualBasic; $r = [Microsoft.VisualBasic.Interaction]::MsgBox('Have you ever barked %USERNAME%? Be honest.', 'YesNo,SystemModal', '  '); if ($r -eq 6) { exit 0 } else { exit 1 }"
if %errorlevel%==0 (set /a score+=1)
powershell -command "Add-Type -AssemblyName Microsoft.VisualBasic; [Microsoft.VisualBasic.Interaction]::MsgBox('I heard you %USERNAME%. The whole street heard you.', 'OKOnly,SystemModal', '  ')"

powershell -command "Add-Type -AssemblyName Microsoft.VisualBasic; $r = [Microsoft.VisualBasic.Interaction]::MsgBox('Do you have furry art saved on this computer %USERNAME%?', 'YesNo,SystemModal', '  '); if ($r -eq 6) { exit 0 } else { exit 1 }"
if %errorlevel%==0 (set /a score+=1)
powershell -command "Add-Type -AssemblyName Microsoft.VisualBasic; [Microsoft.VisualBasic.Interaction]::MsgBox('I found the folder %USERNAME%. The hidden one.', 'OKOnly,SystemModal', '  ')"

powershell -command "Add-Type -AssemblyName Microsoft.VisualBasic; $r = [Microsoft.VisualBasic.Interaction]::MsgBox('Are you in a furry discord server %USERNAME%?', 'YesNo,SystemModal', '  '); if ($r -eq 6) { exit 0 } else { exit 1 }"
if %errorlevel%==0 (set /a score+=1)
powershell -command "Add-Type -AssemblyName Microsoft.VisualBasic; [Microsoft.VisualBasic.Interaction]::MsgBox('I have been in there too %USERNAME%. Reading everything.', 'OKOnly,SystemModal', '  ')"

powershell -command "Add-Type -AssemblyName Microsoft.VisualBasic; $r = [Microsoft.VisualBasic.Interaction]::MsgBox('Do you make animal sounds when nobody is home %USERNAME%?', 'YesNo,SystemModal', '  '); if ($r -eq 6) { exit 0 } else { exit 1 }"
if %errorlevel%==0 (set /a score+=1)
powershell -command "Add-Type -AssemblyName Microsoft.VisualBasic; [Microsoft.VisualBasic.Interaction]::MsgBox('Someone is always home %USERNAME%.', 'OKOnly,SystemModal', '  ')"

powershell -command "Add-Type -AssemblyName Microsoft.VisualBasic; $r = [Microsoft.VisualBasic.Interaction]::MsgBox('Have you ever introduced your fursona to someone in real life %USERNAME%?', 'YesNo,SystemModal', '  '); if ($r -eq 6) { exit 0 } else { exit 1 }"
if %errorlevel%==0 (set /a score+=1)
powershell -command "Add-Type -AssemblyName Microsoft.VisualBasic; [Microsoft.VisualBasic.Interaction]::MsgBox('Your fursona introduced itself to me first %USERNAME%.', 'OKOnly,SystemModal', '  ')"

powershell -command "Add-Type -AssemblyName Microsoft.VisualBasic; $r = [Microsoft.VisualBasic.Interaction]::MsgBox('Do you think your fursona is more real than you %USERNAME%?', 'YesNo,SystemModal', '  '); if ($r -eq 6) { exit 0 } else { exit 1 }"
if %errorlevel%==0 (set /a score+=1)
powershell -command "Add-Type -AssemblyName Microsoft.VisualBasic; [Microsoft.VisualBasic.Interaction]::MsgBox('It is %USERNAME%. It told me so.', 'OKOnly,SystemModal', '  ')"

powershell -command "Add-Type -AssemblyName Microsoft.VisualBasic; $r = [Microsoft.VisualBasic.Interaction]::MsgBox('Final question %USERNAME%... are you ready to accept what you truly are?', 'YesNo,SystemModal', '  '); if ($r -eq 6) { exit 0 } else { exit 1 }"
if %errorlevel%==0 (set /a score+=1)

powershell -command "Add-Type -AssemblyName Microsoft.VisualBasic; [Microsoft.VisualBasic.Interaction]::MsgBox('It does not matter what you answered.', 'OKOnly,SystemModal', '  ')"
powershell -command "Add-Type -AssemblyName Microsoft.VisualBasic; [Microsoft.VisualBasic.Interaction]::MsgBox('Your fursona is already here %USERNAME%.', 'OKOnly,SystemModal', '  ')"
powershell -command "Add-Type -AssemblyName Microsoft.VisualBasic; [Microsoft.VisualBasic.Interaction]::MsgBox('It has been here the whole time.', 'OKOnly,SystemModal', '  ')"
powershell -command "Add-Type -AssemblyName Microsoft.VisualBasic; [Microsoft.VisualBasic.Interaction]::MsgBox('In the walls.', 'OKOnly,SystemModal', '  ')"
powershell -command "Add-Type -AssemblyName Microsoft.VisualBasic; [Microsoft.VisualBasic.Interaction]::MsgBox('Goodbye %USERNAME%. Lock your doors tonight.', 'OKOnly,SystemModal', '  ')"
