﻿CoordMode, ToolTip, Screen

sr60()
{
  cheker = 0
  Loop {
    Sleep, 100
    ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\0CW.png
	if ( ErrorLevel == 0 ) {
	  cheker = 0
	}
    ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, ctrImg\errQv.png
	if ( ErrorLevel == 0 ) {
	  cheker++
	  if ( cheker != 2 ) {
	    Sleep, 10000
	  }
	}
	ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, ctrImg\errQv2.png
	if ( ErrorLevel == 0 ) {
	  cheker++
	  if ( cheker != 2 ) {
	    Sleep, 10000
	  }
	}
	ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, ctrImg\goodQv.png
	if ( ErrorLevel == 0 ) {
	  cheker = 0
	  Sleep, 10000
	}
	if ( cheker == 2 ) {
	  SendInput {f2}
	  ErrorLevel = 1 
	  while ( ErrorLevel != 0 ) {
	    ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\x.png
		if ( ErrorLevel == 1 ) {
		  ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\0CW.png
		  If ( ErrorLevel == 0 ) {
		    cheker = 0
			ErrorLevel = 0
			FoundX = 0
			FoundY = 300
		  } else {
			ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\tikLogo.png
			if ( ErrorLevel == 0 ) {
			  Send !{f4}
		      ErrorLevel == 1 
			}
		  }
		}
	  }
	    cheker = 0
	    FoundX += 15
	    FoundY += 15
        Click %FoundX% %FoundY%
		Sleep, 1500
		Run, bot.ahk
		Sleep, 500
		ErrorLevel = 1
		while ( ErrorLevel != 0 )
	    {
          ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, img\subBut2.png
		  if ( ErrorLevel == 1 ) {
		    ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\0CW.png
			if ( ErrorLevel == 1 ) {
			  ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, img\tikLogo.png
			  if ( ErrorLevel == 0 ) {
			    Send !{f4}
				ErrorLevel == 1 
			  }
			}
		  }
		}
		SendInput {f1}
	}
	ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, ctrImg\err502.png
	if ( ErrorLevel == 0 ) {
	  Sleep, 10000
	  SendInput {f5}
	  Sleep, 30000
	}
	ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, ctrImg\errServ.png
	if ( ErrorLevel == 0 ) {
	  MouseGetPos, MouseX, MouseY
	  if ( MouseX < 10 ) {
	    ErrorLevel = 1
		while ( ErrorLevel != 0 )
	    {
          ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, img\subBut2.png
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

