CoordMode, ToolTip, Screen
DetectHiddenWindows, On
SetBatchLines, 10ms

sr60()
{
  cheker = 0
  Loop {
    Sleep, 400
    ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\0CW.png
	if ( ErrorLevel == 0 ) {
	  cheker = 0
	}
    ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, ctrImg\errQv.png
	If ( ErrorLevel == 1 ) {
	  ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, ctrImg\errQvNice.png
	}
	if ( ErrorLevel == 0 ) {
	  cheker++
	  if ( cheker != 1 ) {
	    Sleep, 10000
	  }
	}
	ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, ctrImg\errQv2.png
	if ( ErrorLevel == 0 ) {
	  cheker++
	  if ( cheker != 1 ) {
	    Sleep, 10000
	  }
	}
	ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, ctrImg\goodQv.png
	If ( ErrorLevel == 1 ) {
	  ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, ctrImg\goodQvNice.png
	}
	if ( ErrorLevel == 0 ) {
	  cheker = 0
	  Sleep, 10000
	}
	if ( cheker == 1 ) {
	  WinClose, %A_Desktop%\tiktop1\bot.ahk
      WinClose, %A_Desktop%\tiktop\bot.ahk
	  ErrorLevel = 1 
	  while ( ErrorLevel != 0 ) {
	    ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\x.png
		if ( ErrorLevel == 1 ) {
		  ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\x.png
		}
		if ( ErrorLevel == 1 ) {
		  ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\0CW.png
		  If ( ErrorLevel == 0 ) {
		    cheker = 0
			ErrorLevel = 0
			FoundX = 0
			FoundY = 300
		  } else {
			ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\subBut.png
			If ( ErrorLevel == 1 ) {
			  ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\subBut1.png
			}
			if ( ErrorLevel == 0 ) {
			  Send !{Left}
		      ErrorLevel == 1 
			}
		  }
		}
	  }
	    cheker = 0
	    FoundX += 15
	    FoundY += 15
        Click %FoundX% %FoundY%
		Sleep, 2500
		Run, bot.ahk
		Sleep, 500
		ErrorLevel = 1
		while ( ErrorLevel != 0 )
	    {
          ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, img\subBut2.png
		  if ( ErrorLevel == 1 ) {
		    ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\0CW.png
			if ( ErrorLevel == 1 ) {
			  ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\subBut.png
			  If ( ErrorLevel == 1 ) {
			    ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\subBut1.png
			  }
			  if ( ErrorLevel == 0 ) {
			    Send !{Left}
				ErrorLevel == 1 
			  }
			}
		  }
		}
		Sleep, 45000
	    SendInput {f5}
	    Sleep, 15000
		SendInput {f1}
	}
	ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, ctrImg\err502.png
	if ( ErrorLevel == 1 ) {
	  ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, ctrImg\err502big.png
	}
	if ( ErrorLevel == 0 ) {
	  Sleep, 10000
	  SendInput {f5}
	  Sleep, 30000
	}
	ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, ctrImg\errServ.png
	If ( ErrorLevel == 1 ) {
	  ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, ctrImg\errServNice.png
	}
	if ( ErrorLevel == 0 ) {
	  MouseGetPos, MouseX, MouseY
	  if ( MouseX < 10 ) {
	    ErrorLevel = 1
		while ( ErrorLevel != 0 )
	    {
          ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, img\subBut2.png
		  If ( ErrorLevel == 1 ) {
		    ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, ctrImg\errSubBut.png
		  }
		}
		Sleep, 10000
        Click %FoundX% %FoundY% 
		Sleep, 200
		Click %FoundX% %FoundY% 
	  } else {
	    Sleep, 20000
	    Click
	    Sleep, 200
	    Click
	  }
	}
	ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, ctrImg\Xtiktok.png
	if ( ErrorLevel == 0 ) {
	  Sleep, 1000
	  FoundX += 8
	  FoundY += 8
	  Click %FoundX% %FoundY% 
	}
  }
}

f9::
{
  sr60()
  return
}

f10:: 
{ 
 exitapp
 return
}

