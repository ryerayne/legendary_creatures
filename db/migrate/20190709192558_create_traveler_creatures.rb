class CreateTravelerCreatures < ActiveRecord::Migration[5.2]
  def change
    create_table :traveler_creatures do |t|
      t.integer :traveler_id
      t.integer :creature_id

      t.timestamps
    end
  end
end
