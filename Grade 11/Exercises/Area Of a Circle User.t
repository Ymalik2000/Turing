%Yash Malik
%23/02/17
%This program calculates the area of a circle by utilizing vars, constants and a computer defined variables

%---------------Start of Program---------------------------------------------------------------
var r : int                                                                                     %The radius that is inputted is declared as an integer (r) because it will be operated on  
var area: real                                                                                  %Area is declared as a real number because pi is a real number and the result will be too

const pi:= 3.1415                                                                               %Pi is declared as a constant (3.1415)

put "This program calculates the area of a circle by utilizing user defined variable"           %Purpose of the program is stated to the user
f
put "Please enter your desired radius"                                                          %The user is asked to enter the desired radius
    get r                                                                                       %The radius is inputted
    
area:=pi*r**2                                                                                   %The area of the circle is calculated using the equation area=pi*r^2

put "The area of a circle with a radius of ", r, " units is equal to ", area ," units squared " %The radius is re-stated, along with the final result in units squared
%---------------End of Program-----------------------------------------------------------------
