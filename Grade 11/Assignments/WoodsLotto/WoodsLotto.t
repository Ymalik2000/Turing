var input, count, temp, temp1, temp2, temp3, k, x, wins : int
var uservalues : array 1..6 of int
var unshuffled : array 1..49 of int
var shuffled : array 1..49 of int
var winnums: array 1..6 of int
var check : boolean := false

View.Set ("graphics:600,1000")
count:=0
wins:=0

%-----------------------USERPICKS--------------------------------------
proc Userpicks

loop
    get input
    
	if input < 1 or input > 49 then
	    put "Please enter a number greater than between 1 and 49"
	    
	elsif input >= 1 then 
	    count:=count+1
	    uservalues(count):=input
	end if
	
	if count=6 then exit
	end if        
end loop

count:=0
end Userpicks
%-----------------------COMPSHUFFLE-------------------------------------
proc Compshuffle

for i:1..49
    count:=count+1
	unshuffled(i):=count
end for

for i:1..100
    randint(k, 1, 49)
	temp1:=unshuffled(k)
	temp3:=k
    randint(k, 1, 49)
	unshuffled(temp3):=unshuffled(k)
	unshuffled(k):=temp1
end for

for i:1..49
    shuffled(i):=unshuffled(i)
end for

end Compshuffle
%--------------------------WINNUM---------------------------------------
proc Winnum 
for i:1..6
randint (x,1,49)
    winnums(i):= shuffled(x)
end for
end Winnum
%-------------------------NUMSORT---------------------------------------
proc Numsort (var arr : array 1 .. 6 of int)
loop
    for x: 1..5
	if arr(x) > arr(x+1) then
	    temp := arr(x)
	    arr(x) := arr(x+1)
	    arr(x+1) := temp
	    check:=false
	end if
    end for
    exit when check
    check:=true
end loop
end Numsort
%------------------------COMPARENUM-------------------------------------
proc Comparenum (var arr : array 1 .. 6 of int, var arr2 : array 1 .. 6 of int)
for i:1..6
    for x:1..6
	if arr(x) = arr2(i)
	    then wins:=wins+1
	end if
    end for
end for
cls
end Comparenum
%-------------------------Display----------------------------------------
proc Display
    for i:1..6
	put winnums(i)
    end for
end Display
Userpicks
Compshuffle
Winnum
Numsort(uservalues)
Numsort(winnums)
Comparenum(uservalues,winnums)
