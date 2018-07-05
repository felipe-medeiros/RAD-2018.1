class RemoveContactsFromStudents < ActiveRecord::Migration[5.1]
  def change
    remove_column :students, :email, :string
    remove_column :students, :telefone, :string
  end
end
