%Yash Malik
%ICS3UO
%05/26/17
%The purpose of this program is to use graphica to draw smiley faces that convey
% certain emotions to the user
%-----------------------Start Of Program-----------------------------------------------
setscreen ("graphics")
%-----Happy----------------------------------------------------------------------------
proc Happy
    Draw.FillBox (0, 0, maxx, maxy, 11)             %Background Colour
    Draw.Oval (maxx div 2, maxy div 2, 175, 175, 7) %Head
    drawarc (315, 175, 100, 75, 210, 330, 7)        %Mouth
    Draw.FillOval (250, 250, 7, 7, 7)               %Eyes
    Draw.FillOval (375, 250, 7, 7, 7)
    drawarc (250, 250, 40, 30, 60, 150, 7)          %Eyebrows
    drawarc (375, 250, 40, 30, 45, 130, 7)
    drawfill (maxx div 2, maxy div 2, 14, 7)        %Face Colour
    drawline (maxx div 2, 250, 275, 175, 7)         %Nose
    drawline (275, 175, maxx div 2, 150, 7)
end Happy
%------Surprised-----------------------------------------------------------------------
proc Surprised
    Draw.FillBox (0, 0, maxx, maxy, 41)             %Background Colour
    Draw.Oval (maxx div 2, maxy div 2, 175, 175, 7) %Head
    Draw.FillOval (250, 250, 7, 7, 7)               %Eyes
    Draw.FillOval (375, 250, 7, 7, 7)
    Draw.Oval (maxx div 2, 80, 50, 50, 7)           %Mouth
    drawarc (250, 300, 40, 30, 60, 150, 7)          %Eyebrows
    drawarc (375, 300, 40, 30, 45, 130, 7)
    drawfill (maxx div 2, maxy div 2, 14, 7)        %Face Colour
    drawfill (maxx div 2, 100, 7, 7)                %Mouth Colour
    drawline (maxx div 2, 250, 275, 175, 7)         %Nose
    drawline (275, 175, maxx div 2, 150, 7)
end Surprised
%------Confused------------------------------------------------------------------------
proc Confused
    Draw.FillBox (0, 0, maxx, maxy, 5)              %Background Colour
    Draw.Oval (maxx div 2, maxy div 2, 175, 175, 7) %Head
    Draw.FillOval (250, 250, 7, 7, 7)               %Eyes
    Draw.FillOval (375, 250, 7, 7, 7)
    drawarc (350, 75, 100, 75, 60, 150, 7)          %Mouth
    drawarc (250, 250, 40, 30, 60, 150, 7)          %Eyebrows
    drawline (400, 300, 350, 275, 7)
    drawfill (maxx div 2, maxy div 2, 14, 7)        %Face Colour
    drawline (maxx div 2, 250, 275, 175, 7)         %Nose
    drawline (275, 175, maxx div 2, 150, 7)
end Confused
%------Angry---------------------------------------------------------------------------
proc Angry
    Draw.FillBox (0, 0, maxx, maxy, 111)            %Background Colour
    Draw.Oval (maxx div 2, maxy div 2, 175, 175, 7) %Head
    Draw.FillOval (250, 250, 7, 7, 7)               %Eyes
    Draw.FillOval (375, 250, 7, 7, 7)
    drawline (225, 300, 275, 275, 7)                %Eyebrows
    drawline (400, 300, 350, 275, 7)
    drawarc (maxx div 2, 50, 100, 75, 30, 150, 7)   %Mouth
    drawfill (maxx div 2, maxy div 2, 14, 7)        %Face Colour
    drawline (maxx div 2, 250, 275, 175, 7)         %Nose
    drawline (275, 175, maxx div 2, 150, 7)
end Angry
%------Sad-----------------------------------------------------------------------------
proc Sad
    Draw.FillBox (0, 0, maxx, maxy, 23)             %Background Colour
    Draw.Oval (maxx div 2, maxy div 2, 175, 175, 7) %Head
    drawarc (maxx div 2, 50, 100, 75, 30, 150, 7)   %Mouth
    drawarc (350, 200, 40, 30, 210, 330, 7)         %Eyes
    drawarc (250, 200, 40, 30, 210, 330, 7)
    drawarc (350, 250, 55, 30, 180, 310, 7)         %Eyebrows
    drawarc (225, 250, 55, 30, 230, 360, 7)
    drawfill (maxx div 2, maxy div 2, 14, 7)        %Face Colour
    drawline (300, 170, 250, 150, 7)                %Nose
    drawline (250, 150, 300, 140, 7)
end Sad
%------Main Line-----------------------------------------------------------------------
loop
    Happy
    delay (2000)
    cls
    Surprised
    delay (2000)
    cls
    Confused
    delay (2000)
    cls
    Angry
    delay (2000)
    cls
    Sad
    delay (2000)
    cls
end loop
