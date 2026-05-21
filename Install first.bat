@echo off
echo ================================
echo   YouTube Link Downloader Setup
echo ================================
echo.
echo Downloading yt-dlp...
curl -L "https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp.exe" -o "%USERPROFILE%\Downloads\yt-dlp.exe"
echo.
echo Done! yt-dlp is installed.
echo Now you can use YouTube Link Downloader.bat
echo.
pause
