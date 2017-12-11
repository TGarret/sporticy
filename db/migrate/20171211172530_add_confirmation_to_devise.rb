class AddConfirmationToDevise < ActiveRecord::Migration[5.1]
  def upto
    add_columm :users, :confirmation_token, :string
    add_columm :users, :confirmated_at, :datetime
    add_columm :users, :confirmation_sent_at, :datetime
    add_columm :users, :confirmation_token_at, unique: true
  end
  def down
    remove_columms :users, :confirmation_token, :confirmation_sent_at
  end
end
