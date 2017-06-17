class AddColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :password_digest, :string
    add_index :users, :name, unique: true
    add_index :users, :email, unique: true
  end

end
