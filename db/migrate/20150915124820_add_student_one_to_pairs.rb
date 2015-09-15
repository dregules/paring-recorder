class AddStudentOneToPairs < ActiveRecord::Migration
  def change
    add_column :pairs, :studentOne, :text
  end
end
