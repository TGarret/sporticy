class AddConfirmationToDevise < ActiveRecord::Migration[5.1]
  def upto
    add_column :users, :confirmation_token, :string
    add_column :users, :confirmated_at, :datetime
    add_column :users, :confirmation_sent_at, :datetime
    add_column :users, :confirmation_token_at, unique: true
  end
  def down
    remove_column :users, :confirmation_token, :confirmation_sent_at
  end
end
