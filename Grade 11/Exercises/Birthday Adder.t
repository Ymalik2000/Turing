%Yash Malik
%03/07/2017
%This program will add together the digits of your birthday, and see if it is the same
% as your favourite number

%----------------------------Start of Program------------------------------------------
var  favnum, sum, number, birthdayadd : int
var birthday, amount, output, input : string

put "Please enter your birthday (mmddyyyy)"
    get birthday
put "Please enter your favourite number"
    get favnum
    
    loop    
	sum := 0
	
	for count : 1 .. length(birthday)
	    amount := birthday(count)
		number := strint(amount)
	    sum := sum + number
		output := intstr(sum)
	end for
	
	exit when length(output) = 1
       
	    input := output
	exit when length(output) = 1 
    end loop

birthdayadd := strint(output)
    
if birthdayadd = favnum then
	put "The total of your birthday is the same as your favourite number!"
elsif birthdayadd not = favnum then
	put "The total is not equal to your favourite number :("
end if
%---------------------End of Program---------------------------------------------------    
