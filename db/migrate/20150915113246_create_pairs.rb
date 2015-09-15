class CreatePairs < ActiveRecord::Migration
  def change
    create_table :pairs do |t|

      t.timestamps null: false
    end
  end
end
