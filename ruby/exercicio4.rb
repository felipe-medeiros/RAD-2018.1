require './Pessoa'

lista = []

for i in 1..4
	print "Informe o nome: "
	nome = gets
	print "Informe a idade: "
	idade = gets.to_i
	lista.insert(0, Pessoa.new(nome, idade))
end

for p in lista
	puts p
end
