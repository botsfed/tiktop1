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

