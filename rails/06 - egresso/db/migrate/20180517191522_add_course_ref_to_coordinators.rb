class AddCourseRefToCoordinators < ActiveRecord::Migration[5.1]
  def change
    add_reference :coordinators, :course, foreign_key: true

    Course.find_each do |curso| 
    	Coordinator.create(
    		:nome => curso.coordenador,
    		:matricula => curso.matricula,
    		:senha => curso.senha,
    		:course_id => curso.id
    	)
    end
    
  end
end
