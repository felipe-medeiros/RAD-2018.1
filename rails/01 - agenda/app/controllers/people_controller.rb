class PeopleController < ApplicationController

  def index
  	@nome = 'Valéria Cavalcanti'
  	@idade = 15
  	@numeros = [1,2,3,4,5,6]
  	@pessoa = Person.new("Valéria", 15)
  end

end
