class AddSocialIdToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :social_id, :string
  end
end
