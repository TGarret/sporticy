class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.text :comment
      t.integer :star, default: 1
      t.references :activity, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps null: false 
    end
  end
end
