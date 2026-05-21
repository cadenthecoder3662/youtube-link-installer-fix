@echo off
cd /d "%USERPROFILE%\Downloads"
echo ================================
echo   YouTube Link Downloader
echo ================================
echo.
if not exist yt-dlp.exe (
    echo yt-dlp.exe not found! Downloading it now...
    curl -L "https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp.exe" -o yt-dlp.exe
    echo Done!
    echo.
)
echo Type the number of the file type you want:
echo.
echo 1. Best audio (webm/m4a)
echo 2. MP3
echo 3. MP4 (video)
echo.
set /p choice="Type a number (1, 2, or 3): "
echo.
if not "%choice%"=="1" if not "%choice%"=="2" if not "%choice%"=="3" (
    echo Invalid choice! Type 1, 2, or 3 only.
    pause
    exit
)
set /p link="Paste your YouTube link here: "
echo.
if "%link%"=="" (
    echo You did not paste a link!
    pause
    exit
)
echo Downloading...
echo.
if "%choice%"=="1" yt-dlp.exe -f bestaudio "%link%" && echo SUCCESS! File saved to Downloads. || echo FAILED! Check your link and try again.
if "%choice%"=="2" yt-dlp.exe -x --audio-format mp3 "%link%" && echo SUCCESS! File saved to Downloads. || echo FAILED! Check your link and try again.
if "%choice%"=="3" yt-dlp.exe -f mp4 "%link%" && echo SUCCESS! File saved to Downloads. || echo FAILED! Check your link and try again.
echo.
pause
