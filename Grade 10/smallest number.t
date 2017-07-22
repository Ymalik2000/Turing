var input, base, hex, remove : string
var a, b, c, d, e, f, count, other : int
%3124 is number used
put "Please enter base"
get base
put "Please enter number"
get input
a := 999999999
b := 0
if base = "10" then
    for y : 1 .. length (input)
	c := strint (input (y))
	if a > c then
	    a := c
	    put a
	end if
    end for
    if a > b then
	b := a
    end if
end if
if base = "16" then
    for y : 1 .. length (input)
	c := strint (input (y), 16)
	if a > c then
	    a := c
	    hex := intstr (a, 1, 16)
	    put hex
	end if
    end for
end if
e := 999999
count := 0
b := a
if base = "10" then
    for y : 1 .. length (input)
	c := strint (input (y))
	if c= b then
	count:= count+1
	f := c
	elsif c not= b then
	d := c - b
	if d < e then
	    e := d
	    other := c
	end if
    end if
   
end for
if count = length(input) then
put b, " is the smallest number, and ", f,  " is the second smallest"
end if
if count not= length(input) then
 put b, " is the smallest number, and ", other,  " is the second smallest"
end if
end if

