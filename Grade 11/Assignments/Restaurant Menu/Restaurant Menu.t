%Yash Malik
%03/23/17
%Mrs. Sajan
%ICS3UO
%This program displays a menu of items for a customer to order, and then calculates
% the total of the order with tax. Uses case structure and define variables to do so.
%---------------------------------Start of Program------------------------------------%
													    
var total, tax, totaltax: real := 0                 %Taxes are defined as real numbers         
var menu, order, confirm: string                    %Inputs are defined as strings
var hst : real := 0.13                              %Hst is defined as a constant
var hamburger : int := 4                            %All of the menu items are then
var poutine : int := 5                              % defined as integers, and each 
var fishtaco : int := 6                             % is given a monetary value
var hotdog : int := 4
var pop : int := 2
var icedtea : int := 2
var water : int := 1
var milk : int := 2
var icecream : int := 3
var applepie : int := 4
var brownies : int := 2
var cake : int := 3

View.Set ("graphics:650;1000")

loop

    put "Welcome to the Beachside Cafe! Would you like to see the menu?"
	get menu                            %User is given the option to quit
	    if menu = "no" or menu = "n" then
		exit
	    end if
						    %The menu is then displayed
    put    "MEALS                    DRINKS                DESSERTS"
    put    "1.Hamburger - $4.00      5.Pop - $2.00         9.Ice Cream - $3.00"
    put    "2.Poutine - $5.00        6.Iced Tea - $2.00    10.Apple Pie - $4.00"
    put    "3.Fish Taco - $6.00      7.Water - $1.00       11.Brownies - $2.00"
    put    "4.Hot Dog - $4.00        8.Milk - $2.00        12.Cake - $3.00"
    put " "                                         %Instructions are shown
    put "Please enter the number that corresponds with the item you would like to"
    put "order, and then press enter. Please input exit when you want to exit."
    put " "
    put "Your reciept with ordered items will appear below on the right."
    
loop                                                %Ordering sequence is looped
    
    get order                                       %Orders are inputted as many times
						    % as the user wants
    case order of 
    
    label "exit": exit                              %User can exit when they wish to
						    %Each number from 1-12 is assigned
    label "1" :                                     % a price and menu item
    put "                                                            Hamburger - $4.00"
    total:=total+hamburger
    
    label "2" :
    put "                                                            Poutine - $5.00"
    total:=total+poutine
    
    label "3" :
    put "                                                            Fish Taco - $6.00"
    total:=total+fishtaco
    
    label "4" :
    put "                                                            Hot Dog - $4.00"
    total:=total+hotdog
    
    label "5" :
    put "                                                            Pop - $2.00"
    total:=total+pop
    
    label "6" :
    put "                                                            Iced Tea - $2.00"
    total:=total+icedtea
    
    label "7" :
    put "                                                            Water - $1.00"
    total:=total+water
    
    label "8" :
    put "                                                            Milk - $2.00"
    total:=total+milk
    
    label "9" :
    put "                                                            Ice Cream - $3.00"
    total:=total+icecream
    
    label "10" :
    put "                                                            Apple Pie - $4.00"
    total:=total+applepie
    
    label "11" :
    put "                                                            Brownies - $2.00"
    total:=total+brownies
    
    label "12" :
    put "                                                            Cake - $3.00"
    total:=total+cake   
    
    label :                                         %Error check to make sure the user 
    put "Please choose a valid menu item"           % has inputted a valid number
    
    end case
    
end loop


put "Would you like to order anything else?"        %User is given the option to add 
						    % to their previous order
    get confirm
	if confirm = "no" or confirm = "n" then     %If they want to quit, then the 
	    tax:=total*hst                          % total and tax is calculated
    totaltax:=total+tax
	    put "Your subtotal is $", total         %Subtotal, HST, and total are then
	    put "Your total HST is $", tax          % displayed
	    put "Your total with tax is $", totaltax
		exit
	end if
	
end loop

put "Good Bye! Please Come Again!"
%---------------------------------End of Program--------------------------------------%
