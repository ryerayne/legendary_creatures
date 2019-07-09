class RemoveWisdomFromCreatures < ActiveRecord::Migration[5.2]
  def change
    remove_column :creatures, :wisdom, :string
  end
end
