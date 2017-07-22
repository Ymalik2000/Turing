%Random Die Roller
%Yash Malik
%04/06/17
%Mrs. Sajan
%ICS3UO
%This program will roll a die 10 times, and award you $10 for every roll that is either
% 5 or 6 by utilizing randint and arrays
%-------------------Start of Program---------------------------------------------------

var i, winnings : int                             %The random integer andwinnings are  
var input : string                                % decalred as variables, the input is  
var rolls : array 1..10 of int                    % defined as a string, and the 10
						  % digit array is defined as rolls
winnings:=0                                       %Inital winnings set to $0

put "This program will roll a die 10 times, and award you $10 for every roll"
put "that is either 5 or 6."
put " "                                           %Purpose of program is shown

for x:1..10                                       %Random integers are generated 10 
    randint ( i, 1, 6 )                           % times
	rolls(x):= i                              %Values stored in the array
    if i = 5 or i = 6 then                        %Die roll value is checked and money
	winnings:=winnings+10                     % is awarded
    end if
end for

put "Your rolls are..."

for x:1..10                                       %Stored array values are displayed
    put rolls(x)                              
end for

put "You won $", winnings, "!"                    %Amount of cash won is shown
%-------------------End of Program-----------------------------------------------------
