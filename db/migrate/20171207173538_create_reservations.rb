class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.references :user, foreign_key: true
      t.references :activity, foreign_key: true
      t.datetime :date
      t.integer :participant
      t.integer :price
      t.integer :total

      t.timestamps
    end
  end
end
