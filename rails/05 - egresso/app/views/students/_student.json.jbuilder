json.extract! student, :id, :nome, :matricula, :email, :telefone, :ano, :semestre, :senha, :course_id, :created_at, :updated_at
json.url student_url(student, format: :json)
