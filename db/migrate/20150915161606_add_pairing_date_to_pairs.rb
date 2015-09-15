class AddPairingDateToPairs < ActiveRecord::Migration
  def change
    add_column :pairs, :pairingDate, :text
  end
end
