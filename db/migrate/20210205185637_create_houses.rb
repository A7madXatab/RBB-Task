class CreateHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :houses do |t|
      t.integer :rooms
      t.integer :floors
      t.boolean :air_cond

      t.timestamps
    end
  end
end
