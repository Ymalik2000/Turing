%Numbers Numbers by Yash Malik
%This program only accepts positive integers as input.
%This program adds the values of the individual digits to form a new integer.
%This process is repeated until a single digit integer is produced.

var choice, placevalue, input, answer, hex, remove, other3, base, total2 : string
var sum, number, a, b, c, d, e, f, count, count2, other, hex2, other2, total, answer2 : int

put "Do you want to play? Answer y or n"
get choice
loop
    put "Choose Base 10 or Base 16. Enter only 10 or l6"
    get base
    if base not= "10" and base not= "16" then                                      
	put "Please put only 10 or 16"
    else
	exit
    end if
end loop
put "Enter a number"
get input
a := 999999999
b := 0
e := 999999
count := 0
f := 0
other := 0
loop
if base = "10" then
    for y : 1 .. length (input)
	c := strint (input (y))
	if a > c then
	    a := c
	end if
    end for
    if a > b then
	b := a
    end if
end if
if base = "10" then
    for y : 1 .. length (input)
	c := strint (input (y))
	if c = b then
	    count := count + 1
	    f := c
	elsif c not= b then
	    d := c - b
	    if d < e then
		e := d
		other := c
	    end if
	end if
    end for
    if base = "16" then
	for y : 1 .. length (input)
	    c := strint (input (y), 16)
	    if a > c then
		a := c
		hex := intstr (a, 1, 16)
	    end if
	end for
	hex2 := strint (hex, 16)
    end if
    if base = "16" then
	for y : 1 .. length (input)
	    c := strint (input (y), 16)
	    put c
	    if c = hex2 then
		count := count + 1
		f := c
	    elsif c not= hex2 then
		d := c - hex2
		if d < e then
		    e := d
		    other2 := c
		    other3 := intstr (other2, 1, 16)
		end if
	    end if
	end for
    end if
    loop
	sum := 0
	for count3 : 1 .. length (input)                                         
	    placevalue := input (count3)                                        
	    if base = "10" then
		number := strint (placevalue)
	    elsif base not= "10" then
		number := strint (placevalue, 16)
	    end if
	    sum := sum + number                                                
	    if base = "16" then                                                                                            
		answer := intstr (sum, 1, 16)
	    else
		answer := intstr (sum)
	    end if
	end for
	exit when length (answer) <= 2
	input := answer                                                       
	exit when length (answer) <= 2                                    
    end loop
end if


loop
    total := 0
    if base not= "10" then
	exit
    end if
    if base = "10" then
	answer2 := 0
	answer2 := strint (answer)
	if length (answer) < 2 then
	    total := answer2 - f - other
	    put answer
	    exit
	end if
	if count = length (input) then
	    total := answer2 - b - f
	    put total
	    exit
	end if
	if count not= length (input) then
	    total := answer2 - f - other
	    put total
	    exit
	end if
    end if
end loop
loop
    total := 0
    if base not= "16" then
	exit
    end if
    if base = "16" then
	answer2 := strint (answer)
	if length (answer) < 2 then
	    total := answer2 - f - other
	    put answer
	    exit
	end if
	if count = length (input) then
	    total := answer2 - b - f
	    put total
	    exit
	end if
	if count not= length (input) then
	    total := answer2 - f - other
	    put total69
	    exit
	end if
    end if
end loop
total2 := intstr (total)

loop
    sum := 0
    for count5 : 1 .. length (total2)                                             
	placevalue := total2 (count5)                                             
	if base = "10" then
	    number := strint (placevalue)
	elsif base not= "10" then
	    number := strint (placevalue, 16)
	end if
	sum := sum + number                                                    
	if base = "16" then                                                                                                  
	    answer := intstr (sum, 1, 16)
	else
	    answer := intstr (sum)
	end if
    end for
    exit when length (answer) = 1
    input := answer                                                             
    exit when length (answer) = 1                                                 
end loop
put "The sum is ", answer
