%Yash Malik
%27/02/17
%This program calculates the area of a triangle by utilizing
%vars and a user defined variables, and loops 5 times

%---------------Start of Program------------------------------------------------------
var b , h, area : real                                %Variables are defined as real numbers

for x:1..5                                            %The loop is set to run for 5 loops
put "This program calculates the area of a triangle"  %Purpose of the program is given
    put "Please enter your desired base length"       %User enters the desired base
	get b                                         %Input is taken and stored as "b"

    put "Please enter your desired height"            %User enters the desired height
	get h                                         %Input is taken and stored as "h"
			
    area:=(b*h)/2                                     %The area is calculated and saved

    put "The area is ", area, " units squared "       %The final result is stated   
end for                                               %The end of the for loop is specified
%---------------End of Program---------------------------------------------------------
