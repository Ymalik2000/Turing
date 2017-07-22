var grade, Bob, John, Mark : int
var count, sum, sumtotal, counttotal : int := 0

open : Bob, "Bob.txt", get

loop
    exit when eof (Bob)
    get : Bob, grade
    sum := sum + grade
    count := count + 1
end loop

put "Bob's average mark is ", round (sum / count)
close : Bob

sumtotal:= sumtotal+sum
counttotal:= counttotal + count
count := 0
sum := 0


open : John, "John.txt", get

loop
    exit when eof (John)
    get : John, grade
    sum := sum + grade
    count := count + 1
end loop

put "John's average mark is ", round (sum / count)
close : John

sumtotal:= sumtotal+sum
counttotal:= counttotal + count
count := 0
sum := 0

open : Mark, "Mark.txt", get

loop
    exit when eof (Mark)
    get : Mark, grade
    sum := sum + grade
    count := count + 1
end loop

put "Mark's average mark is ", round (sum / count)
close : Mark

sumtotal:= sumtotal+sum
counttotal:= counttotal + count

put " "
put "The average total mark is ", round (sumtotal/counttotal)
