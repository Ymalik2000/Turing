% The Sorting Array Program by Alex. C
% The user enters any alphanumeric string
% The program sorts the strings based on the number of alphanumeric characters, beginning from a
var input : flexible array 1..100 of string
var input2 : flexible array 1..100, 1..26 of int
var answer, prove, check2 : string
var value, amount : int
put "The program will take the characters entered"
put "It will display the sorted strings"
loop
    %Asks if the user would like to play
    put "Do you want to play. Enter y or n?"
    get answer
    exit when (answer not = "y")
    loop
	%Recieves the number of strings the user desires to enter
	put "How many inputs would you like to have?"
	get amount
	%Plug in new upper
	new input,amount
	new input2,amount,26
	    %Cycle through the inputs and identifies characters
	    for pi : 1..amount
		for omega : 1..26
		    input2(pi,omega) := 0
		end for
	    end for
	    %Asks the user to enter the strings for each part of the array
	    put "Enter any combination alphanumeric character(s)"
	    for alpha : 1..amount
		put "Enter a set for ", alpha
		get input(alpha)
		input(alpha) := Str.Upper (input(alpha))
	    end for
	    new input, amount
	    for gamma : 1..amount % Number of strings
		for letter : 65..90 % Number of letters in the alphabet
		    for theta : 1..length(input(gamma)) % Number of digits
			%Determines what letter is present
			if ord(input(gamma)(theta)) = letter then
			    input2(gamma, letter - 64) := input2(gamma, letter - 64) + 1
			end if
		    end for
			if input2(gamma,letter - 64) not = 0 then
			    %Outputs the final product
			    put "There are ", input2(gamma,letter - 64)," of ", chr(letter)," in string ", gamma
			end if
		end for
	    end for
    end loop
end loop
