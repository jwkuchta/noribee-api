class UpdateSubOnUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :sub, :string, unique: true
  end
end
