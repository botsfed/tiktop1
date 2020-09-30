CoordMode, ToolTip, Screen

sr60()
{
  Loop {
    Sleep, 1000
	ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, ctrImg\captTw.png
	if ( ErrorLevel == 0 ) {
	  FoundX += 8
	  FoundY += 8
	  Sleep, 500
	  Click %FoundX% %FoundY%
	  Sleep, 500
	  MouseMove ,100 ,625
	}
	ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, ctrImg\captTw1.png
	if ( ErrorLevel == 0 ) {
	  FoundX += 8
	  FoundY += 8
	  Sleep, 500
	  Click %FoundX% %FoundY%
	  Sleep, 500
	  MouseMove ,100 ,625
	}
	ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, ctrImg\captTwGo.png
	if ( ErrorLevel == 0 ) {
	  FoundX += 8
	  FoundY += 8
	  Sleep, 500
	  Click %FoundX% %FoundY%
	  Sleep, 500
	  MouseMove ,100 ,625
	}
	ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, ctrImg\formGo.png
	if ( ErrorLevel == 0 ) {
	  FoundX += 8
	  FoundY += 8
	  Sleep, 500
	  Click %FoundX% %FoundY%
	  Sleep, 500
	  MouseMove ,100 ,625
	}
	ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, ctrImg\captTikTok.png
	if ( ErrorLevel == 0 ) {
	  SendInput {f2}
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
	  Send captcha %serInfo%
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
  }
}

f11::
{
  sr60()
  return
}

f13:: 
{ 
 exitapp
 return
}

