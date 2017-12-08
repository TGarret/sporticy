class CreateConversations < ActiveRecord::Migration[5.1]
  def change
    create_table :conversations do |t|
      t.integer :send_id
      t.integer :recpient_id

      t.timestamps
    end
  end
end
