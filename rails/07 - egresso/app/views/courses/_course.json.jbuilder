json.extract! course, :id, :nome, :sigla, :site, :coordenador, :matricula, :senha, :created_at, :updated_at
json.url course_url(course, format: :json)
