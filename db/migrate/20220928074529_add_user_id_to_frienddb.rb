class AddUserIdToFrienddb < ActiveRecord::Migration[7.0]
  def change
    add_column :frienddbs, :user_id, :integer
    add_index :frienddbs, :user_id
  end
end
