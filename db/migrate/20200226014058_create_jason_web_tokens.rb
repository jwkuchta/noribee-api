class CreateJasonWebTokens < ActiveRecord::Migration[6.0]
  def change
    create_table :jason_web_tokens do |t|

      t.timestamps
    end
  end
end
