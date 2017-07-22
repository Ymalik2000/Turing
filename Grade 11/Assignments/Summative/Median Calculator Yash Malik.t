var amount, input, evenodd, place, place2 : int
var median : real

var choice : string

put "This program takes up to 10 integers values entered by the user."
put "It then displays the median and the position of the median."
put " "
put "All entries must be in ascending order."
put " "

put "How many numbers would you like to enter?"
get amount
var entries : array 1 .. amount of int
cls


proc Store (var size : int)

    put "Please enter your inputs in ascending order"
    var numbers : array 1 .. size of int
    for i : 1 .. size
	get input
	numbers (i) := input
    end for

    for x : 1 .. size
	entries (x) := numbers (x)
    end for

end Store

proc Check
    evenodd := amount mod 2
    if evenodd = 1 then
	place := ((amount - 1) div 2) + 1
	median := entries (place)
	put "The median is ", median, ", and is number ", place, " in the list."
    elsif evenodd = 0 then
	place := (amount div 2)
	place2 := (amount div 2) + 1
	median := (entries (place) + entries (place2)) / 2
put "The median is ", median, ", and it is between position ", place, " and ", place2, " on the list."
    end if
end Check

loop

    Store (amount)
    Check
    put " "
    put "Press e to exit"
    put "Enter any other alphanumeric charachter to run and enter another ", amount, " numbers"
    put " "
    put "Please exit and rerun the program if you wish to enter a higher amount of"
    put "numbers."
    put " "
    get choice
    if choice = "e" then
	exit
    end if

    cls

    put "How many numbers would you like to enter?"
    get amount
end loop

put "Thanks for using my program :)"
put "Have a great day!"
