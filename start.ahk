SplashTextOn, , 40,Bots.Fed, Ожидайте..`nИдёт проверка обновлений.
Sleep, 1000
UrlDownloadToFile, https://raw.githubusercontent.com/botsfed/tiktop1/master/settings.ini, trash\settings.ini
FileReadLine, myVer, settings.ini, 2
FileReadLine, mainVer, trash\settings.ini, 2
FileDelete, trash\settings.ini
If ( myVer != mainVer ) {
  SplashTextOn, , 20,Bots.Fed, Идёт обновление...
  Sleep, 3000
  UrlDownloadToFile, https://github.com/botsfed/tiktop1/archive/master.zip, trash\mainVer.zip
    Sleep, 3000
}
if ( myVer == mainVer ) {
  SplashTextOn, , 20,Bots.Fed, Проверка завершена.
  Sleep, 1000
  SplashTextOn, , 20,Bots.Fed, Запуск..
  Sleep, 1000
  Run, Control.ahk
  Run, bot.ahk
  Run, checkBan.ahk
  Run, checkQv.ahk
  Run, antiCapt.ahk
}