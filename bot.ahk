CoordMode, ToolTip, Screen

f1:: 
{
FileReadLine, Green, data\infoLogin.txt, 1
FileReadLine, Orange, data\infoLogin.txt, 2
FileReadLine, Red, data\infoLogin.txt, 3
FileReadLine, Yellow, data\infoLogin.txt, 4
FileReadLine, Blood, data\infoLogin.txt, 5
FileReadLine, spin, data\infoBot.txt, 1
repeat = 0
checkBad = 0
ErrorLevel = 1
	  while ( ErrorLevel != 0 ) 
	  {
        ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\1acc.png
		if ( ErrorLevel == 0 ) {
		  accNold = 1
		} else {
		  ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\2acc.png
		  if ( ErrorLevel == 0 ) {
		    accNold = 2
		  } else {
		    ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\3acc.png
		    if ( ErrorLevel == 0 ) {
		      accNold = 3
		    } else {
			  ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\6acc1.png
		      if ( ErrorLevel == 0 ) {
		        accNold = 4
		      } else {
			    ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\7acc.png
		        if ( ErrorLevel == 0 ) {
		          accNold = 5
		        } 
			  }
			}
		  }
		}
	  }
  Loop {
    if ( spin == 5 ) {
	  Sleep, 60000
	  accNold = %accN%
	  repeat = 1
	  spin = 0
	  while ( repeat == 1 ) {
	  repeat = 0
	  ErrorLevel = 1
	  while ( ErrorLevel != 0 ) 
	  {
        ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\1acc.png
		if ( ErrorLevel == 0 ) {
		  accN = 1
		} else {
		  ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\2acc.png
		  if ( ErrorLevel == 0 ) {
		    accN = 2
		  } else {
		    ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\3acc.png
		    if ( ErrorLevel == 0 ) {
		      accN = 3
		    } else {
			  ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\6acc1.png
		      if ( ErrorLevel == 0 ) {
		        accN = 4
		      } else {
			    ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\7acc.png
		        if ( ErrorLevel == 0 ) {
		          accN = 5
		        } 
			  }
			}
		  }
		}
	  }
	  ErrorLevel = 1
	  while ( ErrorLevel != 0 ) {
	    ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, img\tikTopSwap.png
	  }
	  Sleep, 1000
	  FoundX += 10
	  FoundY += 10
	  Click %FoundX% %FoundY%
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
		  if ( cheker == 30 ) {
			Send {PgDn}
			Sleep, 1000
		  }
		  if ( cheker > 60 ) {
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
		  if ( cheker == 30 ) {
			Send {PgDn}
			Sleep, 1000
		  }
		  if ( cheker > 60 ) {
		    cheker = 0
		    ErrorLevel = 1 
			while ( ErrorLevel != 0 ) {
			  ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, img\nextP.png
			}
			Sleep, 1000
	        FoundX += 10
	        FoundY += 10
	        Click %FoundX% %FoundY%
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
		  if ( cheker == 30 ) {
			Send {PgDn}
			Sleep, 1000
		  }
		  if ( cheker > 60 ) {
		    cheker = 0
		    ErrorLevel = 1 
			while ( ErrorLevel != 0 ) {
			  ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, img\nextP.png
			}
			Sleep, 1000
	        FoundX += 10
	        FoundY += 10
	        Click %FoundX% %FoundY%
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
		  if ( cheker == 30 ) {
			Send {PgDn}
			Sleep, 1000
		  }
		  if ( cheker > 60 ) {
		    cheker = 0
		    ErrorLevel = 1 
			while ( ErrorLevel != 0 ) {
			  ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, img\nextP.png
			}
			Sleep, 1000
	        FoundX += 10
	        FoundY += 10
	        Click %FoundX% %FoundY%
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
		  if ( cheker == 30 ) {
			Send {PgDn}
			Sleep, 1000
		  }
		  if ( cheker > 60 ) {
		    cheker = 0
		    ErrorLevel = 1 
			while ( ErrorLevel != 0 ) {
			  ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, img\nextP.png
			}
			Sleep, 1000
	        FoundX += 10
	        FoundY += 10
	        Click %FoundX% %FoundY%
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
	  Send {PgUp}
	  Sleep, 1000
	  ErrorLevel = 1
	while ( ErrorLevel != 0 )
	{
	  if ( ErrorLevel == 1 ) {
	    ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\0CW.png
		if ( ErrorLevel == 0 ) {
		  MouseMove ,0 , 405
		  repeat = 1
		  Sleep, 50000
		}
	  }
	  if ( ErrorLevel != 0 ) {
	    ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\goCW.png
	  }
	}
	}
	if ( accNold != accN)  {
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
		  FileDelete, data\accUse.txt
	      FileAppend, %accN%, data\accUse.txt
		  Sleep, 2000
		  Run, www.twitter.com/messages
	  ErrorLevel = 1
	  while ( ErrorLevel != 0 )
	  {
        ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\twitSwap1.png
	  }
	  FoundX += 5
	  FoundY += 5
	  Sleep, 1000
      Click %FoundX% %FoundY%
	  ErrorLevel = 1
	  if ( accN == 1 ) {
	    while ( ErrorLevel != 0 ) {
		  ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\2acc.png
		}
	  }
	  if ( accN == 2 ) {
	    while ( ErrorLevel != 0 ) {
		  ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\3acc.png
		}
	  }
	  if ( accN == 3 ) {
	    while ( ErrorLevel != 0 ) {
		  ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\6acc.png
		}
	  }
	  if ( accN == 4 ) {
	    while ( ErrorLevel != 0 ) {
		  ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\7acc.png
		}
	  }
	  if ( accN == 5 ) {
	    while ( ErrorLevel != 0 ) {
		  ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\1acc.png
		}
	  }
	  Sleep, 1000
	  Click %FoundX% %FoundY%
	  Sleep, 1500
	  ErrorLevel = 1
	  while ( ErrorLevel != 0 ) {
	    ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, img\checkLoad.png
	  }
	  Send ^w
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
	  }
	}
    ErrorLevel = 1
	while ( ErrorLevel != 0 )
	{
      ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\goCW.png
	  if ( ErrorLevel == 0 ) {
	    spin++
	    FoundX += 60
	  }
	  if ( ErrorLevel == 1 ) {
	    ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\0CW.png
		if ( ErrorLevel == 0 ) {
		  MouseMove ,0 , 405
		  spin = 5
		  repeat = 1
		}
	  }
	}
	FileDelete, data\infoBot.txt
	FileAppend, %spin%, data\infoBot.txt
	if ( repeat != 1 ) {
	Sleep, 1000
	SetdefaultMouseSpeed, 15
    Click %FoundX% %FoundY% 
	SetdefaultMouseSpeed, 0
	Sleep, 1000
	ErrorLevel = 1
	while ( ErrorLevel != 0 )
	{
	  ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\tikLogo.png
	}
	cheker = 0
	ErrorLevel = 1
	while ( ErrorLevel != 0 )
	{
      ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\subBut.png
	  if ( ErrorLevel == 0 ) {
		checkBad = 0
	  }
	  if ( ErrorLevel == 1 ) {
	    ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\subBut3.png
		if ( ErrorLevel == 0 ) {
	   	  checkBad = 3
		}
	  }
	  if ( ErrorLevel == 1 ) {
	    ImageSearch, FoundX, FoundY, 0, 0, 625, 300, img\subBut1.png
		if ( ErrorLevel == 0 ) {
		  FoundX = 50
		  FoundY += 30
		  checkBad++
		}
	  }
	  if ( ErrorLevel == 1 ) {
	    while ( ErrorLevel != 0 ) {
	      ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\tikLogo.png
		}
	    ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\likeBut.png
		if ( ErrorLevel == 1 ) {
		  ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\likeBut22.png
		}
		if ( ErrorLevel == 0 ) {
		  checkBad = 0
		} 
		if ( ErrorLevel == 1 ) {
		  ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\likeBut1.png
		  if ( ErrorLevel == 1 ) {
		    ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\likeBut22.png
		  }
		  if ( ErrorLevel == 0 ) {
		    FoundX = 50
			FoundY = 50
			checkBad++
		  } else {
		  cheker++
			if ( cheker == 8 ) {
			  cheker = 0
			  FoundX = 50
			  FoundY = 50
			  ErrorLevel = 0 
			}
		  }
		}
	  }
	}
	FoundX += 15
	FoundY += 15
	Sleep, 1000
    Click %FoundX% %FoundY% 
	Sleep, 2500
	Send !{f4}
	Sleep, 1000
	ErrorLevel = 1
	if ( checkBad == 3 ) {
	  checkBad = 0
	  while ( ErrorLevel != 0 ) {
	  ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\x.png
	  if ( ErrorLevel == 0 ) {
	    FoundX += 15
	    FoundY += 15
	    Sleep, 1000
        Click %FoundX% %FoundY%
		Sleep, 1500
	  }
	  }
	}
	ErrorLevel = 1
	cheker = 0
	while ( ErrorLevel != 0 )
	{
      ImageSearch, FoundX, FoundY, 775, 240, 1920, 1080, img\subBut2.png
	  cheker++
	  if ( cheker == 15 ) {
	    FoundX = 0
		FoundY = 500
		ErrorLevel = 0
	  }
	}
	Sleep, 1000
    Click %FoundX% %FoundY% 
	Sleep, 1000
	Sleep, 500
	MouseMove ,0 ,325
  }  
  }
}

f2::
{
  exitapp
  return
}