DetectHiddenWindows, On
FileReadLine, Green, data\infoLogin.txt, 1
FileReadLine, Orange, data\infoLogin.txt, 2
FileReadLine, Red, data\infoLogin.txt, 3
FileReadLine, Yellow, data\infoLogin.txt, 4
FileReadLine, Blood, data\infoLogin.txt, 5
FileReadLine, accN, data\accUse.txt, 1
WinClose, %A_Desktop%\tiktop1\bot.ahk
WinClose, %A_Desktop%\tiktop\bot.ahk
Run, https://tiktop-free.com/logout
ErrorLevel = 1
while ( ErrorLevel != 0 ) {
  ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, ctrImg\tiktopLogo.png
}
Process, Close, chrome.exe
Sleep, 5000
Run, https://tiktop-free.com/tasks/
cheker = 0
ErrorLevel = 1
while ( ErrorLevel != 0 ) {
  ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, ctrImg\chromeX.png
  cheker++
  Sleep, 1000
  If ( cheker > 10 ) {
    ErrorLevel = 0
  }
}
FoundX += 8
FoundY += 8
Sleep, 1000
Click %FoundX% %FoundY% 
ErrorLevel = 1
while ( ErrorLevel != 0 ) {
  ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, ctrImg\tiktopLogIcn.png
}
Sleep, 1000
ErrorLevel = 1
while ( ErrorLevel != 0 ) {
  ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, ctrImg\tiktopLogBut.png
}
FoundX += 8
FoundY += 8
Sleep, 1000
Click %FoundX% %FoundY%
ErrorLevel = 1
while ( ErrorLevel != 0 ) {
  ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, ctrImg\tiktopLogCheck.png
}
Sleep, 1000
ErrorLevel = 1
while ( ErrorLevel != 0 ) {
  ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, ctrImg\tiktopMoney.png
}
FoundX += 8
FoundY += 8
Sleep, 1000
Click %FoundX% %FoundY%
Sleep, 2000
if ( accN == 5 ) {
	Sleep, 2000
	Run, www.tiktok.com/logout?redirect_url=https`%3A`%2F`%2Fwww.tiktok.com`%2F`%40%Green%&lang=ru
}
if ( accN == 1 ) {
    Sleep, 2000
	Run, www.tiktok.com/logout?redirect_url=https`%3A`%2F`%2Fwww.tiktok.com`%2F`%40%Orange%&lang=ru
}
if ( accN == 2 ) {
    Sleep, 2000
	Run, www.tiktok.com/logout?redirect_url=https`%3A`%2F`%2Fwww.tiktok.com`%2F`%40%Red%&lang=ru
}
if ( accN == 3 ) {
    Sleep, 2000
	Run, www.tiktok.com/logout?redirect_url=https`%3A`%2F`%2Fwww.tiktok.com`%2F`%40%Yellow%&lang=ru
}
if ( accN == 4 ) {
    Sleep, 2000
	Run, www.tiktok.com/logout?redirect_url=https`%3A`%2F`%2Fwww.tiktok.com`%2F`%40%Blood%&lang=ru
}
ErrorLevel = 1
while ( ErrorLevel != 0 ) {
   ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, img\checkLog.png
}
ErrorLevel = 1
while ( ErrorLevel != 0 ) {
   ImageSearch, FoundX, FoundY, 1050, 20, 1920, 200, img\loginTik.png
   if ( ErrorLevel == 1 ) {
	  ImageSearch, FoundX, FoundY, 1050, 20, 1920, 200, img\loginTik1.png
   }
}
FoundX += 15
FoundY += 15
Sleep, 1000
Click %FoundX% %FoundY%
ErrorLevel = 1
while ( ErrorLevel != 0 ) {
    ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, img\loginTikTwit.png
}
Sleep, 3000
Click %FoundX% %FoundY%
ErrorLevel = 1
Sleep, 500
MouseMove, 325, 225
while ( ErrorLevel != 0 ) {
    ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, img\checkLog1.png
	if ( ErrorLevel == 1 ) {
	  ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, img\checkLog11.png
	  if ( ErrorLevel == 1 ) {
	    ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, img\checkLog111.png
	  }
	}
  if ( ErrorLevel == 0 ) {
    Sleep, 1000
    Send ^w
  }
}
Sleep, 2000
Send ^+I
Sleep, 2000
Send #{Down}
ErrorLevel = 1
	  while ( ErrorLevel != 0 ) {
	    ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, img\checkChekAcc.png
	  }
	  ErrorLevel = 1
	  cheker = 0
	  if ( accN == 1 ) {
	    while ( ErrorLevel != 0 ) {
		  ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\2acc.png
		  cheker++
		  if ( cheker == 5 ) {
		    cheker = 0
			Send {PgDn}
			Sleep, 1000
			cheker1++
		  }
		  if ( cheker1 == 3 ) {
		    cheker = 0
		    ErrorLevel = 1 
			while ( ErrorLevel != 0 ) {
			  ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, img\nextP.png
			}
			Sleep, 1000
	        FoundX += 10
	        FoundY += 10
	        Click %FoundX% %FoundY%
			Sleep, 2000
		  }
		}
		ErrorLevel = 1
		while ( ErrorLevel != 0 ) {
		  ImageSearch, FoundX1, FoundY1, 0,0, 1920, 1080, img\2acc.png
		}
	  }
	  if ( accN == 2 ) {
	    while ( ErrorLevel != 0 ) {
		  ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\3acc.png
		  cheker++
		  if ( cheker == 5 ) {
		    cheker = 0
			Send {PgDn}
			Sleep, 1000
			cheker1++
		  }
		  if ( cheker1 == 3 ) {
		    cheker = 0
		    ErrorLevel = 1 
			while ( ErrorLevel != 0 ) {
			  ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, img\nextP.png
			}
			Sleep, 1000
	        FoundX += 10
	        FoundY += 10
	        Click %FoundX% %FoundY%
			Sleep, 2000
		  }
		}
		ErrorLevel = 1
		while ( ErrorLevel != 0 ) {
		  ImageSearch, FoundX1, FoundY1, 0,0, 1920, 1080, img\3acc.png
		}
	  }
	  if ( accN == 3 ) {
	    while ( ErrorLevel != 0 ) {
		  ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\6acc1.png
		  cheker++
		  if ( cheker == 5 ) {
		    cheker = 0
			Send {PgDn}
			Sleep, 1000
			cheker1++
		  }
		  if ( cheker1 == 3 ) {
		    cheker = 0
		    ErrorLevel = 1 
			while ( ErrorLevel != 0 ) {
			  ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, img\nextP.png
			}
			Sleep, 1000
	        FoundX += 10
	        FoundY += 10
	        Click %FoundX% %FoundY%
			Sleep, 2000
		  }
		}
		ErrorLevel = 1
		while ( ErrorLevel != 0 ) {
		  ImageSearch, FoundX1, FoundY1, 0,0, 1920, 1080, img\6acc1.png
		}
	  }
	  if ( accN == 4 ) {
	    while ( ErrorLevel != 0 ) {
		  ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\7acc.png
		  cheker++
		  if ( cheker == 5 ) {
		    cheker = 0
			Send {PgDn}
			Sleep, 1000
			cheker1++
		  }
		  if ( cheker1 == 3 ) {
		    cheker = 0
		    ErrorLevel = 1 
			while ( ErrorLevel != 0 ) {
			  ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, img\nextP.png
			}
			Sleep, 1000
	        FoundX += 10
	        FoundY += 10
	        Click %FoundX% %FoundY%
			Sleep, 2000
		  }
		}
		ErrorLevel = 1
		while ( ErrorLevel != 0 ) {
		  ImageSearch, FoundX1, FoundY1, 0,0, 1920, 1080, img\7acc.png
		}
	  }
	  if ( accN == 5 ) {
	    while ( ErrorLevel != 0 ) {
		  ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\1acc.png
		  cheker++
		 if ( cheker == 5 ) {
		    cheker = 0
			Send {PgDn}
			Sleep, 1000
			cheker1++
		  }
		  if ( cheker1 == 3 ) {
		    cheker = 0
		    ErrorLevel = 1 
			while ( ErrorLevel != 0 ) {
			  ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, img\nextP.png
			}
			Sleep, 1000
	        FoundX += 10
	        FoundY += 10
	        Click %FoundX% %FoundY%
			Sleep, 2000
		  }
		}
		ErrorLevel = 1
		while ( ErrorLevel != 0 ) {
		  ImageSearch, FoundX1, FoundY1, 0,0, 1920, 1080, img\1acc.png
		}
	  }
	  if ( FoundY1 < FoundY ) {
		FoundY = %FoundY1%
	  }
	  if ( FoundX1 < FoundX ) {
		FoundX = %FoundX1%
	  }
	  FoundX += 8
	  FoundY += 100
	  Sleep, 2500
	  Click %FoundX% %FoundY%
	  Sleep, 200
	  Click %FoundX% %FoundY%
	  Sleep, 1000
      Run, bot.ahk
	  Sleep, 2000
SendInput {f1}
exitapp

f15::
{
  exitapp
  return
}


