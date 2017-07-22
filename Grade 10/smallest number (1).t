var input, base, hex : string
var a, b, c, d, e, f, count : int
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
	d := c - b
	if d < e then
	    e := d
	end if
	if d < e then
	    f := c
	end if
    end for
    put b, " is the smallest number, and ", f, " is the second smallest"
end if


