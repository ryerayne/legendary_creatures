class CreateWisdoms < ActiveRecord::Migration[5.2]
  def change
    create_table :wisdoms do |t|
      t.integer :creature_id
      t.string :words

      t.timestamps
    end
  end
end
