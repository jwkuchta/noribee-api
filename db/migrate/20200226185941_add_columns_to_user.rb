class AddColumnsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :user_id, :string
    add_column :users, :picture_large, :string
    add_column :users, :access_token, :string
  end
end
