module PeopleHelper

	def quantidade_multiplos_de_dois
		qtde = 0	
		for n in @numeros
			qtde += 1 if n % 2 == 0
		end
		qtde
	end

	def multiplos(valor)
		vetor = []
		for n in @numeros
			vetor.push(n) if n % valor == 0
		end
		vetor
	end
end
