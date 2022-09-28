class CreateFrienddbs < ActiveRecord::Migration[7.0]
  def change
    create_table :frienddbs do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :twitter
      t.timestamps
    end
  end
end
