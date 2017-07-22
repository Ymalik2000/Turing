var positiona, positiona2, positione, positione2, positioni, positioni2 : int
var positiono, positiono2, positionu, positionu2, count : int
const sentence := "The quick brown fox jumps over the lazy dog"

count:=0

positiona:= index(sentence, "a")
if positiona > 0 then
count:=count+1
end if

positione:= index(sentence, "e")
if positione > 0 then
count:=count+1
end if

positioni:= index(sentence, "i")
if positioni > 0 then
count:=count+1
end if

positiono:= index(sentence, "o")
if positiono > 0 then
count:=count+1
end if

positionu:= index(sentence, "u")
if positionu > 0 then
count:=count+1
end if

for x : 1..length(sentence)

positiona2:= index(sentence(positiona+1..*), "a")
if positiona2 > 0 then
count:=count+1
positiona:=positiona2+positiona
end if

positione2:= index(sentence(positione+1..*), "e")
if positione2 > 0 then
count:=count+1
positione:=positione2+positione
end if

positioni2:= index(sentence(positioni+1..*), "i")
if positioni2 > 0 then
count:=count+1
positioni:=positioni2+positioni
end if


positiono2:= index(sentence(positiono+1..*), "o")
if positiono2 > 0 then
count:=count+1
positiono:=positiono2+positiono
end if


positionu2:= index(sentence(positionu+1..*), "u")
if positionu2 > 0 then
count:=count+1
positionu:=positionu2+positionu
end if

end for


put count
