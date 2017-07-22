setscreen ("graphics")
var font1 : int
font1 := Font.New ("Comic Sans MS:20")
%---------------------Cake------------------------
proc Background
    Draw.FillBox (0, 0, maxx, maxy, 77)
end Background

proc Cake
Draw.FillOval (maxx div 2, maxy div 2, 100, 25, 0)
end Cake
%---------------------Words-----------------------
proc Words
    for x : 1 .. 50
	Font.Draw ("Happy", 180, 325 + x, font1, white)
	Font.Draw ("Birthday", 275, 325 + x, font1, white)
	Font.Draw ("!", 400, 325 + x, font1, white)
	delay (10)
	Background
	delay(1)
	Cake
    end for

    for x : 1 .. 50
	Font.Draw ("Happy", 180, 375 - x, font1, white)
	Font.Draw ("Birthday", 275, 375 - x, font1, white)
	Font.Draw ("!", 400, 375 - x, font1, white)
	delay (10)
	Background
	delay (1)
	Cake
    end for

end Words
%--------------------Cake-------------------------

%--------------------Main Line--------------------
loop
Background
Words
Cake
end loop
