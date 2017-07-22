var day1:real:=2.0
var day2:int:=7
var name:string:="Doozy"

proc FuncFun(j:int,k: string,var m: real)

    m:=m*j
    
end FuncFun

put "Name    Day1          Day2"

for i:1..5

    day2:=day2*2
    
    FuncFun( day2,name,day1)
    
    put name..
    put day2:6..
    put day1:15..
    put " "
    
end for
