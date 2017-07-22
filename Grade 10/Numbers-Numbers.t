var answer, amount, input, output : string
var base, sum, number : int
put "The Numbers Numbers Program"
put "Enter a base and an number"
put "The program will take each digit and add them"
put "It will continue until there is one digit"
loop

    put "Do you want to play? Answer y or n"
    get answer
    exit when (answer not = "y")
    loop
    
	put "Choose Base 10 or Base 16. enter 10 or 16"
	get base
	if base not = 10 and base not = 16 then
	    put "Invalid base"
	else
	    exit
	end if
	end loop

    put "Enter a number"
    get input
    loop
	sum := 0

	for count : 1 .. length(input)
	    amount := input(count)
	
	    if base = 10 then
		number := strint(amount)
	    elsif base not = 10 then
		number := strint(amount,16)
	    end if
	
	    sum := sum + number
	    if base = 16 then
		output := intstr(sum,1,16)
	    else
		output := intstr(sum)
	    end if
	    end for

	    put "The sum is ", output
	    exit when length(output) = 1
	input := output
	exit when length(output) = 1
    end loop
end loop
