%Yash Malik
%ICS3UO
%Mrs Sajan
%06/12/147
%This program gets the values for a, b, and c for a parabola in standard form, and
% displays the nature of the roots to the user
%---------------------Start of Program-------------------------------------------------
var a, b, c, discriminant, root1, root2 : real := 0
var check : string
%------------------------Start of Entry------------------------------------------------
proc Entry (var a, b, c : real)

    var ax, bx, cx : string

    loop

	put " " : 25, "Using the form shown below:"
	put " "
	put " " : 33, "ax**2+bx+c"
	put " "
	put " " : 20, "Enter a, b, and c values of your choice"
	put " " : 12, "The program will then tell you the nature of the roots"
	put " "


	put "Please enter the a value"
	get ax

	put "Please enter the b value"
	get bx

	put "Please enter the c value"
	get cx
	put " "


	if strrealok (ax) and strrealok (bx) and strrealok (cx) then
	    a := strreal (ax)
	    b := strreal (bx)
	    c := strreal (cx)
	    exit
	end if


	put "Only integer inputs are allowed"
	put "Please try again"
	put "Press any key to continue"
	Input.Flush
	Input.Pause
	cls


    end loop

end Entry
%---------------------Start of Discrim-------------------------------------------------
proc Discrim

    Entry (a, b, c)
    
    var bsquare, fourac : real


    bsquare := b ** 2
    fourac := 4 * a * c
    discriminant := bsquare - fourac

end Discrim
%---------------------Start of Check---------------------------------------------------
proc Check (d : real)

    if d = 0 then
	put "The discriminant is ", d
	Text.ColorBack (14)
	put "Because the discriminant is equal to zero, there can only be one real root."
	Text.ColorBack (0)


    elsif d > 0 then
	put "The discriminant is ", d
	Text.ColorBack (10)
	put "Because the discriminant is greater than zero, there can be two distinct roots."
	Text.ColorBack (0)


    elsif d < 0 then
	put "The discriminant is ", d
	Text.ColorBack (12)
	put "Because the discriminant is less than zero, there will be two complex roots."
	Text.ColorBack (0)

    end if

end Check
%---------------------Start of Display-------------------------------------------------
proc Roots (d : real)

    put " "
    put "The roots are:"

    if d < 0 then
	put "[",-b, " + isqrt (", -1*d,")] /", 2*a, " and"
	put "[",-b, " - isqrt (", -1*d,")] /", 2*a

    elsif d > 0 or d = 0 then

	root1 := -b + sqrt (d)
	put root1/ 2 * a ..

	put " and " ..

	root2 := -b - sqrt (d)
	put root2/ 2 * a ..

    end if

end Roots
%-----------------------------Main Line------------------------------------------------
loop

    Discrim
    Check (discriminant)
    Roots (discriminant)

    put " "
    put " "
    put "Enter e to exit"
    put "Enter any other alphanumeric character to run the program again"
    get check

    if check = "e" then
	exit
    end if

    cls

end loop

cls

put "Goodbye! Thanks for using my program!"

%---------------------End of Program---------------------------------------------------
