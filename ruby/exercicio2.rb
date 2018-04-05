print "Informe um número: "
num = gets.to_i

for i in 1 .. num
	print "#{i}\n" if num % i == 0
end
