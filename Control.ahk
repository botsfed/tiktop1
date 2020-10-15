CoordMode, ToolTip, Screen

info()
{
      FileReadLine, serInfo, data\infoServer.txt, 1
      Run, www.e.mail.ru
	  Sleep, 1000
	  ErrorLevel = 1
	  while ( ErrorLevel != 0 )
	  {
        ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, ctrImg\checkMail.png
	  }
	  Sleep, 1000
	  Click %FoundX% %FoundY%
	  ErrorLevel = 1
	  while ( ErrorLevel != 0 )
	  {
        ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, ctrImg\checkMail2.png
	  }
	  Send chazzii1337@gmail.com
	  Sleep, 1000
	  Click %FoundX% %FoundY%
	  Sleep, 1000
	  Send LAG %serInfo%
	  ErrorLevel = 1
	  while ( ErrorLevel != 0 )
	  {
        ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, ctrImg\sendMail.png
	  }
	  FoundX += 10
	  FoundY += 10
	  Sleep, 1000
	  Click %FoundX% %FoundY%
	  ErrorLevel = 1
	  while ( ErrorLevel != 0 )
	  {
        ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, ctrImg\checkMail.png
	  }
	  Send ^w
	  Sleep, 1000
	  SendInput {f4}
}

sr60()
{
chekMail = 0
cheker = 0
  Loop {
    Sleep, 1000
	ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, ctrImg\checkCapt.png
	if ( ErrorLevel == 0 ) {
	  Sleep, 5000
	}
	ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, ctrImg\checkCapt2.png
	if ( ErrorLevel == 0 ) {
	  Sleep, 5000
	}
    MouseX1 = %MouseX%
	MouseY1 = %MouseY%
    MouseGetPos, MouseX, MouseY
	if ( MouseX1 == MouseX ) {
	  if ( MouseY1 == MouseY ) {
	    cheker++
	  } else {
	    chekMail = 0
	    cheker = 0
	  }
	  if ( cheker == 200 ) {
	    chekMail++
	    cheker = 0
		if ( chekMail == 1 ) {
		  Send {PgUp}
		  SendInput {f5}
		}
        if ( chekMail == 2 ) {
		  SendInput {f15}
		  Sleep, 1500
		  Run, reboot.ahk
		}		
		if ( chekMail == 3 ) {
		  chekMail = 0
		  SendInput {f15}
		  info()
		}
	  }
	} else {
	  chekMail = 0
	  cheker = 0
	}
	ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, ctrImg\authTw.png
	if ( ErrorLevel == 0 ) {
	  FoundX += 10
	  FoundY += 10
	  Sleep, 1000
      Click %FoundX% %FoundY% 
	  Sleep, 1000
	}
  }
}

f3::
{
  SendInput {f1}
  SendInput {f7}
  SendInput {f9}
  SendInput {f11}
  sr60()
  return
}

f4:: 
{ 
SendInput {f2}
SendInput {f8}
SendInput {f10}
SendInput {f13}
 exitapp
 return
}

