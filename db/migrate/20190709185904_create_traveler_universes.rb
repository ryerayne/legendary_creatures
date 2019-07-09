class CreateTravelerUniverses < ActiveRecord::Migration[5.2]
  def change
    create_table :traveler_universes do |t|
      t.integer :traveler_id
      t.integer :universe_id

      t.timestamps
    end
  end
end
