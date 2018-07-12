class RemoveCoordinatorFromCourses < ActiveRecord::Migration[5.1]
  def change
    remove_column :courses, :coordenador, :string
    remove_column :courses, :matricula, :string
    remove_column :courses, :senha, :string
  end
end
