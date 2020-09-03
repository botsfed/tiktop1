SplashTextOn, , 40,Bots.Fed, Ожидайте..`nИдёт проверка обновлений.
Sleep, 1000
UrlDownloadToFile, https://raw.githubusercontent.com/botsfed/tiktop1/master/settings.ini, trash\settings.ini
FileReadLine, myVer, settings.ini, 2
FileReadLine, mainVer, trash\settings.ini, 2
FileDelete, trash\settings.ini
If ( myVer != mainVer ) {
  SplashTextOn, , 20,Bots.Fed, Загрузка обновления...
  Sleep, 1000
  UrlDownloadToFile, https://github.com/botsfed/tiktop1/archive/master.zip, trash\mainVer.zip
  SplashTextOn, , 20,Bots.Fed, Установка обновления...
  Sleep, 1000
  run, upd.bat
  Sleep, 2000
  FileRemoveDir, ctrImg, 1
  Sleep, 2000
  FileMoveDir, tiktop1-master\ctrImg, ctrImg
  Sleep, 1000
  FileRemoveDir, Img, 1
  Sleep, 2000
  FileMoveDir, tiktop1-master\Img, Img
  Sleep, 1000
  FileDelete, *.ahk
  Sleep, 1000
  FileMove, tiktop1-master\*.ahk, *.ahk
  Sleep, 1000
  FileDelete, *.ini
  Sleep, 1000
  FileMove, tiktop1-master\*.ini, *.ini
  Sleep, 1000
  FileDelete, *.exe
  Sleep, 1000
  FileMove, tiktop1-master\*.exe, *.exe
  Sleep, 1000
  FileDelete, *.bat
  Sleep, 1000
  FileMove, tiktop1-master\*.bat, *.bat
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