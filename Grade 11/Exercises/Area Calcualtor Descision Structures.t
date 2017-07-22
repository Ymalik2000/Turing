%Yash Malik
%02/03/17
%This program calculates the area of a triangle, rectangle, circle, or trapezoid using 
% user defined variables

%---------------Start of Program-------------------------------------------------------
var shape : string                                             %Variables are defined
var base, height, triarea, rectarea, radius, circarea, b1, b2, traparea : real
const pi:= 3.1415                                              %Pi is set as a constant

put "This program can calculate the area of a triangle, rectangle, circle,"
put "or trapezoid."
put "Which shape's area would you like to calculate? Please enter the full name."
put "Please input exit whenever you would like to exit."       %Instructions are given
							       
loop
    get shape                                                  %Input is taken
	exit when shape = "exit"                               %Exit if the user wants
    
    if shape = "triangle"                                      %Calculates the area of
	then put "Please enter your desired base"              % a triangle if chosen
	get base
	put "Please enter your desired height"            
	get height                                             %Stores input values        
    triarea:=(base*height)/2                                   %Finds the final area
										
    put "The area is ", triarea, " units squared."             %Final output is given
    
    
    elsif shape = "rectangle"                                  %Calculates the area of
	then put "Please enter your desired base"              % a rectangle    
	get base                                               %Stores input values
	put "Please enter your desired height"                 
	get height               
    rectarea:=(base*height)                                    %Finds the final area
							       
    put "The area is ", rectarea, " units squared."            %Final output is given
    
    
    elsif shape = "circle"                                     %Calculates the area of
	then put "Please enter your desired radius"            % a circle if chosen
	get radius            
    circarea:=pi*radius**2     
							       %Finds the final area
    put "The area is ", circarea, " units squared."            %Final output is given
    
    
    elsif shape = "trapezoid"                                  %Calculates the area of 
	then put "Please enter your first base"                % a trapezoid if chosen
	get b1                                                 %Stores input values
	put "Please enter your second base"
	get b2
	put "Please enter your desired height"
	get height        
    traparea:=((b1+b2)/2)*height                               %Finds the final area
						    
    put "The area is ", traparea, " units squared."            %Final output is given

    else                                                       %Error message if input
    put "Please enter a valid input"                           % criteria is not met 
    
    end if                                                     %If selection is ended
end loop                                                       %End of loop is defined
%---------------End of Program---------------------------------------------------------
