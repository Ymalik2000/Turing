%Yash Malik
%28/02/17
%This program calculates the area of a circle by utilizing vars, constants, and a loop.

%---------------Start of Program-----------------------------------------------------------
var r : int                                                %Variables are defined  
var area : real
var answer : string                                        

const pi:= 3.1415                                          %Pi is declared as a constant

loop                                                       %Loop starting point is set
put "This program calculates the area of any circle"       %Purpose of the program is shown                                                                              
put "Please enter your desired radius"                     %User is told to enter a radius
    
get r                                                      %The radius is stored
    
area:=pi*r**2                                              %The area is calculated and kept                                   

put "The area of the circle is ", area ," units squared"   %Final result is stated

put "Would you like to continue? Enter either yes or no."  %User can continue or exit
    get answer                                             %Answer is taken as yes or no  
exit when answer = "no"                                    %Exits loop if user chose "no"
end loop                                                   %Loop end is defined                                  
%---------------End of Program-------------------------------------------------------------
