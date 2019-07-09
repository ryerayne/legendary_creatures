class CreateTravelers < ActiveRecord::Migration[5.2]
  def change
    create_table :travelers do |t|
      t.string :name
      t.string :username
      t.string :password_digest
      t.string :uid

      t.timestamps
    end
  end
end
