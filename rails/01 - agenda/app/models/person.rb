class Person
	attr_accessor :nome
	attr_accessor :idade

	def initialize(nome, idade)
		@nome = nome
		@idade = idade
	end


	def to_s
		"Nome: #{@nome} - Idade: #{@idade}"
	end
end
