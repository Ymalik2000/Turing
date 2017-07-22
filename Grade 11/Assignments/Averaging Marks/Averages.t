var grade : int
var count, sum : int := 0
loop
    get skip
    exit when eof
    get grade
    sum:=sum+grade
    count:=count+1
end loop
put "Average mark is ", round(sum/count)
