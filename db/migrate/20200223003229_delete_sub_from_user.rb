class DeleteSubFromUser < ActiveRecord::Migration[6.0]
  def up
    remove_column :users, :sub, :string
  end
end
