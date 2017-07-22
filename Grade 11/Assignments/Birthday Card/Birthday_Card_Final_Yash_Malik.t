%Yash Malik
%ICS3UO
%06/01/17
%Mrs. Sajan
%
%The purpose of this program is to use animated graphics along with functions such as
% getch and hasch to create a birthday card that effectively conveys emotion
%----------------------Start Of Program------------------------------------------------
var font1, midx, midy, count, font2, flicker, v, colour1, font3 : int %Global integer 
								   % vars are declared
var lit : boolean                                       %Checks to see whether the 
							% candles are lit
var ch : string (1)                                     %Input storage for getch is 
							% defined
font1 := Font.New ("Comic Sans MS:20")                  %Font type and size is 
font2 := Font.New ("Heather:20")                        % declared
font3 := Font.New ("Comic Sans MS:10")

midx := maxx div 2                                      %Middle coordinates of the 
midy := maxy div 2                                      % screen are condensed for 
							% eaiser use later on
%---------------------Background-------------------------------------------------------
proc Background

    Draw.FillBox (0, 0, maxx, maxy, 77)                 %Background colour set to blue
    
end Background
%--------------------End Of Background-------------------------------------------------
%---------------------Cake-------------------------------------------------------------
proc Cake

    drawoval (midx, midy, 100, 25, 7)                   %Top of cake is drawn

    drawfill (midx, midy, 0, 7)                         %Top is coloured in

    drawline (midx - 100, midy, midx - 100, 100, 7)     %Sides of thr cake are drawn
    drawline (midx + 100, midy, midx + 100, 100, 7)

    drawarc (midx, midy - 95, 101, 25, 180, 360, 7)     %Bottom and layers of the cake
    drawarc (midx, midy - 60, 101, 25, 180, 360, 7)     % are drawn
    drawarc (midx, midy - 40, 101, 25, 180, 360, 7)

    drawfill (midx, midy - 50, 136, 7)                  %Layers are then coloured in
    drawfill (midx, midy - 90, 136, 7)
    drawfill (midx, midy - 75, 0, 7)

end Cake
%--------------------End Of Cake-------------------------------------------------------
%--------------------Candles-----------------------------------------------------------
proc Candles
    %Candle #1
    drawoval (midx, 250, 5, 3, 7)                       %Top of the candle is drawn
    drawfill (midx, 250, 34, 7)                         %Top is coloured in

    drawline (midx - 5, 250, midx - 5, 200, 7)          %Sides and bottom of the candle
    drawline (midx + 5, 250, midx + 5, 200, 7)          % are drawn
    drawarc (midx, 203, 6, 3, 180, 360, 7)

    drawfill (midx, midy - 50, 136, 7)                  %Body of the candle is coloured
    drawfill (midx, 240, 34, 7)                         % in
    drawfill (midx, 204, 34, 7)

    Draw.FillBox (midx + 4, 240, midx - 4, 205, 34)     %Overalpping lines are covered
    drawline (midx, 250, midx, 260, 7)                  %Candlewick is drawn
		
    %Candle #2
    drawoval (midx - 50, 250, 5, 3, 7)
    drawfill (midx - 50, 250, 72, 7)

    drawline (midx - 55, 250, midx - 55, 200, 7)        %Candles are drawn again using
    drawline (midx - 45, 250, midx - 45, 200, 7)        % the same process as above
    drawarc (midx - 50, 203, 6, 3, 180, 360, 7)         %Only variables changes are the
							% x coordinate and the colours
    drawfill (midx - 50, midy - 50, 136, 7)
    drawfill (midx - 50, 240, 72, 7)
    drawfill (midx - 50, 204, 72, 7)

    Draw.FillBox (midx - 46, 240, midx - 54, 205, 72)
    drawline (midx - 50, 250, midx - 50, 260, 7)

    %Candle #3
    drawoval (midx + 50, 250, 5, 3, 7)
    drawfill (midx + 50, 250, 12, 7)

    drawline (midx + 55, 250, midx + 55, 200, 7)
    drawline (midx + 45, 250, midx + 45, 200, 7)
    drawarc (midx + 50, 203, 6, 3, 180, 360, 7)

    drawfill (midx + 50, midy - 50, 136, 7)
    drawfill (midx + 50, 240, 12, 7)
    drawfill (midx + 50, 204, 12, 7)

    Draw.FillBox (midx + 46, 240, midx + 54, 205, 12)
    drawline (midx + 50, 250, midx + 50, 260, 7)

end Candles
%--------------------End Of Candles----------------------------------------------------
%--------------------Balloons----------------------------------------------------------
proc Balloons
    %Balloon #1
    drawfilloval (50, count - 35, 35, 35, 39)           %Balloon body is drawn
    drawarc (50, count - 100, 5, 30, 90, 270, 7)        %Balloon string top part drawn
    drawarc (50, count - 160, 5, 30, 270, 90, 7)        %Balloon string bottom drawn

    %Balloon #2
    drawfilloval (175, count - 70, 35, 35, 39)          %Drawing process is repeated
    drawarc (175, count - 135, 5, 30, 90, 270, 7)       % for the other 5 balloons with
    drawarc (175, count - 195, 5, 30, 270, 90, 7)       % varying positions

    %Balloon #3
    drawfilloval (100, count - 90, 35, 35, 34)
    drawarc (100, count - 155, 5, 30, 90, 270, 7)
    drawarc (100, count - 215, 5, 30, 270, 90, 7)

    %Balloon #4
    drawfilloval (470, count - 55, 35, 35, 34)
    drawarc (470, count - 120, 5, 30, 90, 270, 7)
    drawarc (470, count - 180, 5, 30, 270, 90, 7)

    %Balloon #5
    drawfilloval (540, count - 75, 35, 35, 39)
    drawarc (540, count - 140, 5, 30, 90, 270, 7)
    drawarc (540, count - 200, 5, 30, 270, 90, 7)

    %Balloon #6
    drawfilloval (610, count - 45, 35, 35, 34)
    drawarc (610, count - 110, 5, 30, 90, 270, 7)
    drawarc (610, count - 170, 5, 30, 270, 90, 7)
							
end Balloons
%--------------------End of Balloons---------------------------------------------------
%---------------------Flames-----------------------------------------------------------
proc Flames
    %Flame #1
    drawline (midx + flicker, 275, midx - 5 + flicker, 264, 7)  %Tip of flame is drawn
    drawline (midx + flicker, 275, midx + 5 + flicker, 264, 7)
    drawarc (midx + flicker, 266, 5, 5, 180, 360, 7)            %Base of flame is drawn
    drawfill (midx, 268, 42, 7)                                 %Flame is coloured in

    %Flame #2
    drawline (midx - flicker + 50, 275, midx + 45 - flicker, 264, 7)    %Repeated for 
    drawline (midx - flicker + 50, 275, midx + 55 - flicker, 264, 7)    % 3 flames
    drawarc (midx - flicker + 50, 266, 5, 5, 180, 360, 7)
    drawfill (midx + 50, 268, 42, 7)

    %Flame #3
    drawline (midx - 50 - flicker, 275, midx - 55 - flicker, 264, 7)
    drawline (midx - 50 - flicker, 275, midx - 45 - flicker, 264, 7)
    drawarc (midx - 50 - flicker, 266, 5, 5, 180, 360, 7)
    drawfill (midx - 50, 268, 42, 7)
    
end Flames
%---------------------End of Flames----------------------------------------------------
%---------------------Outside----------------------------------------------------------
proc Outside

    Draw.FillBox (0, 0, maxx, maxy, 57)                 %Background colour is set

    loop
							%Inspirational quote and 
							% instructions are given
    Font.Draw ("There are two great days in a person's life - ", 20, 325, font2, white)
    Font.Draw ("the day we are born", 80, 275, font2, white)
    Font.Draw ("and the day we discover why.", 120, 225, font2, white)
    Font.Draw ("-William Barclay", 375, 175, font2, white)
    Font.Draw ("Press Any Key To Open The Card!", 20, 20, font2, white)

    View.Update

    exit when hasch                                     %Exits when the user enters a
							% character
    end loop

    for decreasing x : maxx .. 1                        %Card opening animation shown

	Draw.FillBox (maxx, maxy, x, 0, 77)
	delay (3)
	View.Update

    end for

end Outside
%---------------------End of Outside---------------------------------------------------
%---------------------Inside-----------------------------------------------------------
proc Inside

    for x : 1 .. 50
							%Happy Birthday is drawn and 
							% shifted depending on loop
							% position
	Font.Draw ("Happy Birthday !", 215, 325 + x, font1, white)

	if lit = true then
	
	    Font.Draw ("Congrats!", 250 + x, 50, font1, colour1)
	    Font.Draw ("Have", 500, 250, font1, white)
	    Font.Draw ("Some", 500, 200, font1, white)
	    Font.Draw ("Fun !", 500, 150, font1, white)
	    Font.Draw ("Press Any Key To Close The Card", 225, 20, font3, white)
	    Flames                                      %Flames and text is shown if   
							% the user has lit the flames
	end if

	Balloons                                        %Balloons, cake, and candles 
	Cake                                            % are then drawn
	Candles

	View.Update                                     %Buffered frames are then shown
	delay (10)

	Background                                      %Clears out the screen

	count := count + 1                              %Counters for balloon position,
	flicker := flicker + 1                          % flicker position, and text
	colour1 := colour1 + 1                          % colour are increased

	if count = maxy + 300 then                      %Balloons are reset back to the
	    count := 0                                  % bottom of the screen once 
	end if                                          % they leave

	if flicker > 2 then                             %Flame movement is reset
	    flicker := 0
	end if

	if colour1 > 47 then                            %"Congrats" colour is changed
	    colour1 := 32                               % and then reset
	end if

    end for

    for x : 1 .. 50                                     %Process above is repeated for
							% the opposite direction
	Font.Draw ("Happy Birthday !", 215, 375 - x, font1, white)

	if lit = true then
	    Font.Draw ("Congrats!", 300 - x, 50, font1, colour1)
	    Font.Draw ("Seize", 50, 250, font1, white)
	    Font.Draw ("The", 50, 200, font1, white)
	    Font.Draw ("Day !", 50, 150, font1, white)
	    Font.Draw ("Press Any Key To Close The Card", 225, 20, font3, white)
	    Flames
	end if

	Balloons
	Cake
	Candles

	View.Update
	delay (10)

	Background

	count := count + 1
	colour1 := colour1 + 1
	flicker := flicker + 1

	if count = maxy + 300 then
	    count := 0
	end if

	if flicker > 2 then
	    flicker := 0
	end if

	if colour1 > 47 then
	    colour1 := 32
	end if

    end for

end Inside
%---------------------End Of Inside----------------------------------------------------
%--------------------Main Line---------------------------------------------------------
View.Set ("graphics,offscreenonly,nocursor")            %Display window is set to 
							% display graphics that are 
							% rendered offscreen, and 
							% without cursor indicators on
							% screen
loop                                                    %Main body is looped

lit := false                                            %Global variables are given a
count := 0                                              % a starting value before they
flicker := 0                                            % are called upon
colour1 := 32

Input.Flush                                             %Input buffer is cleared

Outside                                                 %Exterior of card is shown

for x : 1 .. 7                                          %Initial opening animation is 
    Inside                                              % shown
end for 

Cake                                                    %Cake and Candles are drawn
Candles

Font.Draw ("Press Any Key To Light The Flames!", 100, 20, font1, white)
							%User is given instructions on
							% how to continue

View.Update                                             %Buffered frames are displayed
Input.Flush                                             %Input buffer is cleared
getch (ch)                                              %Program is paused until the 
							% user enters a key
View.Update                                             %Buffered frames are displayed

lit := true                                             %Candle flame indicator is then
							% set to true
Input.Flush                                             %Input buffer is cleared

loop

    Inside                                              %Interior of the card is shown
    exit when hasch                                     %Exits and returns to the 
							% exterior when another key is 
							% entered
end loop

Input.Flush

for x : 1..maxx                                         %Card closing animation shown

	Draw.FillBox (0, maxy, x, 0, 57)
	delay (3)
	View.Update
	Input.Flush
	
end for
    
end loop
%-------------------End Of Main Line---------------------------------------------------
%------------------End Of Program------------------------------------------------------
