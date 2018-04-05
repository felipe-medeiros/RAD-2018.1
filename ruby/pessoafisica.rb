require "./pessoa.rb"

class PessoaFisica < Pessoa
	attr_accessor :cpf

	def initialize(nome, idade, cpf)
		super(nome, idade)
		@cpf = cpf
	end

	def to_s
		"#{@nome} - #{@cpf}"
	end
end
