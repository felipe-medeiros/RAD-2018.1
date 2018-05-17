class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :nome
      t.string :matricula
      t.string :email
      t.string :telefone
      t.integer :ano
      t.integer :semestre
      t.string :senha
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
