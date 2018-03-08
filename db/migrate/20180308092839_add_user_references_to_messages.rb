class AddUserReferencesToMessages < ActiveRecord::Migration[5.1]
  def change
  	add_reference(:messages, :user)
  	add_index :messages, :id
  end
end
