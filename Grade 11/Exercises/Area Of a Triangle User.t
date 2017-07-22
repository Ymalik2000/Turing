%Yash Malik
%23/02/17
%This program calculates the area of a triangle by utilizing vars and a user defined variables

%---------------Start of Program--------------------------------------------------------------------
var b , h, area : real                                                                              %Variables are defined as real numbers

put "This program calculates the area of a triangle using user defined variables"                   %Purpose of the program is given to the user

put "Please enter your desired base length"                                                         %User is told to enter an integer to represent the base of the triangle
    get b                                                                                           %Input is taken

put "Please enter your desired height"                                                              %User is told to enter an integer to represent the height of the triangle
    get h                                                                                           %Input is taken
			
area:=(b*h)/2                                                                                       %The area of the triangle is calculated using base*height divided by 2

put "The area of a triangle is equal to ", area, " units squared "                                  %The final result is stated
%---------------End of Program----------------------------------------------------------------------
