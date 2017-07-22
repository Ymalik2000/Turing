var font1, midx, midy, count, font2 : int

font1 := Font.New ("Comic Sans MS:20")
font2 := Font.New ("Heather:20")

count := 0
midx := maxx div 2
midy := maxy div 2
%---------------------Background-------------------------------------------------------
proc Background
    Draw.FillBox (0, 0, maxx, maxy, 77)
end Background
%---------------------Cake-------------------------------------------------------------
proc Cake
    drawoval (midx, midy, 100, 25, 7)
    drawfill (midx, midy, 0, 7)
    drawline (midx - 100, midy, midx - 100, 100, 7)
    drawline (midx + 100, midy, midx + 100, 100, 7)
    drawarc (midx, midy - 95, 101, 25, 180, 360, 7)
    drawarc (midx, midy - 60, 101, 25, 180, 360, 7)
    drawarc (midx, midy - 40, 101, 25, 180, 360, 7)
    drawfill (midx, midy - 50, 136, 7)
    drawfill (midx, midy - 90, 136, 7)
    drawfill (midx, midy - 75, 0, 7)
end Cake
%--------------------Candles-----------------------------------------------------------
proc Candle
    drawoval (midx, 250, 5, 3, 7)
    drawfill (midx, 250, 34, 7)
    drawline (midx - 5, 250, midx - 5, 200, 7)
    drawline (midx + 5, 250, midx + 5, 200, 7)
    drawarc (midx, 203, 6, 3, 180, 360, 7)
    drawfill (midx, midy - 50, 136, 7)
    drawfill (midx, 240, 34, 7)
    drawfill (midx, 204, 34, 7)
    Draw.FillBox (midx + 4, 240, midx - 4, 205, 34)
    drawline (midx, 250, midx, 260, 7)
end Candle

proc Candle2
    drawoval (midx - 50, 250, 5, 3, 7)
    drawfill (midx - 50, 250, 72, 7)
    drawline (midx - 55, 250, midx - 55, 200, 7)
    drawline (midx - 45, 250, midx - 45, 200, 7)
    drawarc (midx - 50, 203, 6, 3, 180, 360, 7)
    drawfill (midx - 50, midy - 50, 136, 7)
    drawfill (midx - 50, 240, 72, 7)
    drawfill (midx - 50, 204, 72, 7)
    Draw.FillBox (midx - 46, 240, midx - 54, 205, 72)
    drawline (midx - 50, 250, midx - 50, 260, 7)
end Candle2

proc Candle3
    drawoval (midx + 50, 250, 5, 3, 7)
    drawfill (midx + 50, 250, 42, 7)
    drawline (midx + 55, 250, midx + 55, 200, 7)
    drawline (midx + 45, 250, midx + 45, 200, 7)
    drawarc (midx + 50, 203, 6, 3, 180, 360, 7)
    drawfill (midx + 50, midy - 50, 136, 7)
    drawfill (midx + 50, 240, 42, 7)
    drawfill (midx + 50, 204, 42, 7)
    Draw.FillBox (midx + 46, 240, midx + 54, 205, 42)
    drawline (midx + 50, 250, midx + 50, 260, 7)
end Candle3
%--------------------Balloons----------------------------------------------------------
proc BalloonLeft
    drawfilloval (50, count - 35, 35, 35, 39)
    drawarc (50, count - 100, 5, 30, 90, 270, 7)
    drawarc (50, count - 160, 5, 30, 270, 90, 7)
end BalloonLeft

proc BalloonLeft2
    drawfilloval (175, count - 70, 35, 35, 39)
    drawarc (175, count - 135, 5, 30, 90, 270, 7)
    drawarc (175, count - 195, 5, 30, 270, 90, 7)
end BalloonLeft2

proc BalloonLeft3
    drawfilloval (100, count - 90, 35, 35, 34)
    drawarc (100, count - 155, 5, 30, 90, 270, 7)
    drawarc (100, count - 215, 5, 30, 270, 90, 7)
end BalloonLeft3


proc BalloonRight
    drawfilloval (470, count - 55, 35, 35, 34)
    drawarc (470, count - 120, 5, 30, 90, 270, 7)
    drawarc (470, count - 180, 5, 30, 270, 90, 7)
end BalloonRight

proc BalloonRight2
    drawfilloval (540, count - 75, 35, 35, 39)
    drawarc (540, count - 140, 5, 30, 90, 270, 7)
    drawarc (540, count - 200, 5, 30, 270, 90, 7)
end BalloonRight2

proc BalloonRight3
    drawfilloval (610, count - 45, 35, 35, 34)
    drawarc (610, count - 110, 5, 30, 90, 270, 7)
    drawarc (610, count - 170, 5, 30, 270, 90, 7)
end BalloonRight3
%---------------------Outside---------------------------------------------------------
proc Outside
    Draw.FillBox (0, 0, maxx, maxy, 57)
    loop
    Font.Draw ("There are two great days in a person's life - ", 20, 325, font2, white)
    Font.Draw ("the day we are born", 80, 275, font2, white)
    Font.Draw ("and the day we discover why.", 120, 225, font2, white)
    Font.Draw ("-William Barclay", 375, 175, font2, white)
    Font.Draw ("Press Any Key To Open The Card!", 20, 20, font2, white)
    exit when hasch 
    end loop
    for decreasing x: maxx .. 1
    Draw.FillBox (maxx, maxy, x, 0, 77)
    delay(3)
    View.Update
    end for
end Outside
%---------------------Inside----------------------------------------------------------
proc Inside

    for x : 1 .. 50
	count := count + 1

	Font.Draw ("Happy Birthday !", 215, 325 + x, font1, white)

	BalloonLeft
	BalloonLeft2
	BalloonLeft3
	BalloonRight
	BalloonRight2
	BalloonRight3
	Cake
	Candle
	Candle2
	Candle3
	View.Update
	delay (10)
	Background

	if count = maxy + 250
		then
	    count := 0
	end if

    end for

    for x : 1 .. 50
	count := count + 1

	Font.Draw ("Happy Birthday !", 215, 375 - x, font1, white)

	BalloonLeft
	BalloonLeft2
	BalloonLeft3
	BalloonRight
	BalloonRight2
	BalloonRight3
	Cake
	Candle
	Candle2
	Candle3
	View.Update
	delay (10)
	Background

	if count = maxy + 250
		then
	    count := 0
	end if

    end for
end Inside
%--------------------Main Line---------------------------------------------------------
View.Set ("graphics,offscreenonly")
Outside
loop
    Inside
end loop
