CoordMode, ToolTip, Screen

sr60()
{
  FileReadLine, serInfo, data\infoServer.txt, 1
  Loop {
    Sleep, 3000
	ErrorLevel = 1
	ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, ctrImg\banAcc.png
	if ( ErrorLevel == 1 ) {
	  ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, ctrImg\banAcc1.png
	}
	if ( ErrorLevel == 0 ) {
	  Send {f5}
	  Sleep, 15000
	  ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, ctrImg\banAcc.png
	  if ( ErrorLevel == 1 ) {
	    ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, ctrImg\banAcc1.png
	  }
	}
	If ( ErrorLevel == 0 ) {
	  N = 1
	  accName = ACC BAN : 
	  Loop, 5 {
	    FileReadLine, acc, data\infoLogin.txt, %N%
	    Run, www.tiktok.com/@%acc%
		Sleep, 1000
		cheker = 0
		ErrorLevel = 1
		while ( ErrorLevel != 0 ) {
	      ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, ctrImg\banAcc.png
	      if ( ErrorLevel == 1 ) {
	        ImageSearch, FoundX, FoundY, 0,0, 1920, 1080, ctrImg\banAcc1.png
	      }
		  if ( ErrorLevel == 0 ) {
		    accName = %accName% + %acc%,
		  }
		  cheker++
		  if ( cheker == 10 ) {
		    ErrorLevel = 0
		  }
		  Sleep, 1000
		}
		N++
		Send ^w
		Sleep, 1000
	  }
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
	  Send %accName% / %serInfo% 
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

f7::
{
  sr60()
  return
}

f8:: 
{ 
 exitapp
 return
}

