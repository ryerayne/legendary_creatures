class CreateCreatures < ActiveRecord::Migration[5.2]
  def change
    create_table :creatures do |t|
      t.string :name
      t.string :description
      t.string :wisdom
      t.integer :universe_id

      t.timestamps
    end
  end
end
