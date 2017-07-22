%The Numbera Numbers program by Alex C
%Takes a nimber, and adds it's digits together, outputting a sum relative to the base
%Repeats the process until you have one digit
var answer, amount, input, output : string
var base, sum, number : int
put "The Numbers Numbers Program"
put "Enter a base and an number"
put "The program will take each digit and add them"
put "It will continue until there is one digit"
loop
    %Asks if the user wants to play
    put "Do you want to play? Answer y or n"
    get answer
    exit when (answer not = "y")
    loop
	%Asks the user for their desired base
	put "Choose Base 10 or Base 16. enter 10 or 16"
	get base
	if base not = 10 and base not = 16 then
	    put "Invalid base"
	else
	    exit
	end if
	end loop
    %Asks the user for the number they want to add the digits of
    put "Enter a number"
    get input
    loop
	sum := 0
	%Determine the length of the number and each individual digit
	for count : 1 .. length(input)
	    amount := input(count)
	    %Plug in the base that was selected so the equation counts using the base
	    if base = 10 then
		number := strint(amount)
	    elsif base not = 10 then
		number := strint(amount,16)
	    end if
	    %The equation to determin the new input
	    sum := sum + number
	    if base = 16 then
		output := intstr(sum,1,16)
	    else
		output := intstr(sum)
	    end if
	    end for
	    %Print the sum(s)
	    put "The sum is ", output
	    exit when length(output) = 1
	input := output
	exit when length(output) = 1
    end loop
end loop
