@echo off
cd /d "%USERPROFILE%\Downloads"
echo ================================
echo   YouTube Link Downloader
echo ================================
echo.
if not exist yt-dlp.exe (
    echo Downloading yt-dlp...
    curl -L "https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp.exe" -o yt-dlp.exe
    echo Done!
    echo.
)
if not exist ffmpeg.exe (
    echo Downloading ffmpeg...
    curl -L "https://github.com/yt-dlp/FFmpeg-Builds/releases/download/latest/ffmpeg-master-latest-win64-gpl.zip" -o ffmpeg.zip
    echo Extracting...
    tar -xf ffmpeg.zip --strip-components=2 -C "%USERPROFILE%\Downloads" "*/bin/ffmpeg.exe"
    del ffmpeg.zip
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
if "%choice%"=="1" yt-dlp.exe --ffmpeg-location . -f bestaudio "%link%" && echo SUCCESS! || echo FAILED!
if "%choice%"=="2" yt-dlp.exe --ffmpeg-location . -x --audio-format mp3 "%link%" && echo SUCCESS! || echo FAILED!
if "%choice%"=="3" yt-dlp.exe --ffmpeg-location . -f mp4 "%link%" && echo SUCCESS! || echo FAILED!
echo.
echo Check your Downloads folder!
pause
