SplashTextOn, , 40,Bots.Fed1, Ожидайте..`nИдёт проверка обновлений.
UrlDownloadToFile, https://raw.githubusercontent.com/botsfed/tiktop1/master/settings.ini, trash\settings.ini
Sleep, 1500
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
  Sleep, 1000
  FileRemoveDir, tiktop1-master, 1
  Sleep, 1000
  FileDelete, trash\mainVer.zip
  SplashTextOn, , 20,Bots.Fed, Установка завершена.
  Sleep, 2000
  Run, start.exe
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