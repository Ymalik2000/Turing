var lotto_num : array 1 .. 6 of int 
var picked_num : array 1 .. 6 of int 
var correct_num : array 1 .. 6 of boolean 
for i : 1 .. 6 
    correct_num (i) := false %initializing all elements of correct_num to false 
end for 
var exit_loop : boolean 

% generating the numbers.  most of this is to ensure that no 2 numbers are the same. 
for l : 1 .. 6 
    loop 
	exit_loop := true 
	lotto_num (l) := Rand.Int (1, 49) 
	for decreasing c : l - 1 .. 1 
	    if lotto_num (l) = lotto_num (c) then 
		exit_loop := false 
	    end if 
	end for 
	exit when exit_loop 
    end loop 
end for 

for p : 1 .. 6 
    put "Enter number ", p, " : " .. 
    loop 
	exit_loop := true 
	locate (p, 17) 
	get picked_num (p) 
	if picked_num (p) < 1 or picked_num (p) > 49 then 
	    exit_loop := false 
	end if 
	for c : 1 .. p - 1 
	    if picked_num (c) = picked_num (p) then 
		exit_loop := false 
	    end if 
	end for 
	exit when exit_loop 
	locate (p, 17) 
	put "                           " %covers up prevously enter number.  this line is not executed it exit_loop is true coming out of the for loop 
    end loop 
end for 

cls 

put "the winning numbers are:" 
for l : 1 .. 6 
    put " ", lotto_num (l) .. 
end for 
put "" 
put "" 
put "your numbers are" 
for p : 1 .. 6 
    put " ", picked_num (p) .. 
end for 
put "" 

%%CHECKING users numbers against the generated numbers%% 
for p : 1 .. 6 
    for l : 1 .. 6 
	if picked_num (p) = lotto_num (l) then 
	    correct_num (p) := true 
	end if 
    end for 
end for 

for f : 1 .. 6 
    if correct_num (f) then     % same as    if correct_num (f) = true then 
	put "you got your ", f, "th number RIGHT.  you picked ", picked_num (f), "." 
    else 
	put "you got your ", f, "th number WRONG.  you picked ", picked_num (f), "." 
    end if 
end for 
