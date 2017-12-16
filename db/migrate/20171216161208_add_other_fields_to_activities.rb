class AddOtherFieldsToActivities < ActiveRecord::Migration[5.1]
  def change
    add_column :activities, :is_indoor, :boolean
    add_column :activities, :is_outdoor, :boolean
  end
end
