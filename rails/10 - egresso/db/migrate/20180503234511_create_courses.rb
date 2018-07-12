class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :nome
      t.string :sigla
      t.string :site
      t.string :coordenador
      t.string :matricula
      t.string :senha

      t.timestamps
    end
  end
end
