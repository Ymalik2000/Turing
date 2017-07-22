const sentence := "The quick brown fox jumps over the lazy dog"
var count: int :=0
for x:1..length(sentence)
    if sentence(x) = "a" or sentence(x) = "e" or sentence(x) = "i"
    or sentence(x) = "o" or sentence(x) = "u" then
    count:=count+1
    end if
end for
put count
