@echo off
cd /d "%USERPROFILE%\Downloads"
echo ================================
echo   YouTube Link Downloader
echo ================================
echo.
echo Type the number of the file type you want:
echo.
echo 1. Best audio (webm/m4a)
echo 2. MP3
echo 3. MP4 (video)
echo.
set /p choice="Type a number (1, 2, or 3): "
echo.
set /p link="Now paste your YouTube link: "
echo.
echo Downloading...
echo.
if "%choice%"=="1" yt-dlp.exe -f bestaudio "%link%"
if "%choice%"=="2" yt-dlp.exe -x --audio-format mp3 "%link%"
if "%choice%"=="3" yt-dlp.exe -f mp4 "%link%"
echo.
echo Done! Check your Downloads folder.
pause