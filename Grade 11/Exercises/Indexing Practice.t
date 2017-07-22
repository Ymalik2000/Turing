var position, position2 : int
const word := "spirit bear "
 put length(word)
position:= index(word, "i")
put position
position2:= index(word(position+1..*), "i")
put position2+position
