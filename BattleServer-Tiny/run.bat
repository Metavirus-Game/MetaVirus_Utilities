@echo off
set libPath=
for /f "delims=\" %%a in ('dir /b .\lib\*.jar') do (
    rem set "libPath=%libPath%.\lib\%%a;"
    call set libPath=%%libPath%%.\lib\%%a;
)

set libPath=.\BattleServer-0.0.1-SNAPSHOT.jar;%libPath%

echo %libPath%

.\jdks\bin\java -server -Xms64m -Xmx300m -classpath .;%libPath% com.metavirus.battleserver.BattleServerApplication --spring.profiles.active=tiny


exit