class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.string :activity_name
      t.text :description
      t.string :activity_type
      t.string :activity_place
      t.string :competence_developed
      t.integer :max_participant
      t.integer :duration
      t.string :address
      t.integer :siren
      t.integer :price
      t.boolean :active
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
