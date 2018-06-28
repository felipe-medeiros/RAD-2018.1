namespace :db do
	
  desc "Popular o banco com dados falsos. Gem Faker."
  task fake: :environment do
  	for i in 1..100
		Course.create!(
			nome: Faker::Educator.course,
			sigla: Faker::Name.initials(4),
			site: Faker::Internet.url,
			coordinator_attributes: {
				nome: Faker::Name.name,
				matricula: Faker::Number.number(10),
				senha: Faker::Number.number(6)
			}
		)	
	end

	for i in 1..400
		Student.create!(
			nome: Faker::Name.name,
			matricula: Faker::Number.number(10),
			senha: Faker::Number.number(6),
			ano: Faker::Number.between(from=2010, to=2015),
			semestre: Faker::Number.between(from=1, to=2),
			course: Course.all.sample	
		).contacts.create!(
			[
				{ tipo: "telefone", valor: Faker::PhoneNumber.phone_number },
				{ tipo: "email", valor: Faker::Internet.email }
			]
		)
	end

  end

end
