 lista = []

 while lista.length < 6
 	num = gets.to_i
 	lista.insert(0, num) if lista.index(num) == nil
 end

 puts lista
 puts lista.sort
 puts lista.sort.reverse