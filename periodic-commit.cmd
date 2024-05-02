set PATH=%USERPROFILE%\Downloads\PortableGit\bin

cls &&^
cd %cd% &&^
C:\Windows\System32\timeout.exe /t 5 &&^
echo committing &&^
git config --global user.email "smalldirkalex@gmail.com" &&^
git config --global user.name "dirkarnez" &&^
git config --global credential.helper "" &&^
git add * &&^
git commit -m "- upload files" &&^
git push -u origin main


pause
