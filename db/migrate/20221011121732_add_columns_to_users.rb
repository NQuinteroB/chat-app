class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :username, :string
    add_column :users, :aboutme, :string
    add_column :users, :city, :string
    add_column :users, :language, :string
  end
end
