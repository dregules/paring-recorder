class AddStudentTwoToPairs < ActiveRecord::Migration
  def change
    add_column :pairs, :studentTwo, :text
  end
end
