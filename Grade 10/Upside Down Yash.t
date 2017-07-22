%The Upside Down Program By Yash Malik
%This program checks the input given to see if the number would look the same upside down
%It tells you if the number is flippable or not

var input : string
var goodcheck, size, placechecker : int

loop
put "Enter your number"
get input
size := length (input)                                                                      %Size of the input given used later
goodcheck:=0                                                                                %The goodcheck checks whether the input is flipable
for x : 1 .. size
placechecker := x-1
    if input (x) = "2" or input (x) = "3" or input (x) = "4" or input (x) = "5" or input (x) = "7" then %Exits if incorrect numbers are found
	goodcheck := 0
	exit
    elsif input (x) = "9" and input (size - placechecker) = "6" then goodcheck := 1         %Compares the number to the number opposite of it

    elsif input (x) = "6" and input (size - placechecker) = "9" then goodcheck := 1

    elsif input (x) = "0" and input (size - placechecker) = "0" then goodcheck := 1
    
    elsif input (x) = "1" and input (size - placechecker) = "1" then goodcheck := 1

    elsif input (x) = "8" and input (size - placechecker) = "8" then goodcheck := 1
	end if
	if goodcheck = 0 then 
	exit
end if
    if x < size then goodcheck := 0                                                          %Make sure that there are no number length issues
end if
end for
if goodcheck = 0
	then
    put "This number is not flippable"
elsif goodcheck = 1
	then
    put "This number is flippable"
end if
end loop
