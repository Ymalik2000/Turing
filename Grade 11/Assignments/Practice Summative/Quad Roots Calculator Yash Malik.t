%Yash Malik
%ICS3UO
%Mrs Sajan
%06/12/147
%---------------------Start of Program-------------------------------------------------
loop
var a, b, bsquare, fourac, c, d, root1, root2 : real := 0
var check : string

put " " : 25, "Using the form shown below:"
put " "
put " " : 33, "ax**2+bx+c"
put " "
put " " : 20, "Enter a, b, and c values of your choice"
put " " : 12, "The program will then tell you the nature of the roots"
put " "



put "Please enter the a value"
get a

put "Please enter the b value"
get b

put "Please enter the c value"
get c
put " "




bsquare := b ** 2
fourac := 4 * a * c
d := bsquare - fourac




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
    put "Because the discriminant is less than zero, there will be no real roots."
    Text.ColorBack (0)
end if




put " "
put "The roots are:"

if d < 0 then
    put "Both imaginary, and nonexistent."

elsif d > 0 or d = 0 then
    root1 := -b + sqrt (d)
    put root1 div 2 * a ..

    put " and " ..

    root2 := -b - sqrt (d)
    put root2 div 2 * a ..

end if

put " "
put " "
put "Enter e to exit"
put "Enter anything else to run the program again"

get check

if check = "e" then
exit
elsif check = "E" then
exit
end if

cls

end loop
%---------------------End of Program---------------------------------------------------
