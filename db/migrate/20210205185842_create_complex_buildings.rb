class CreateComplexBuildings < ActiveRecord::Migration[6.0]
  def change
    create_table :complex_buildings do |t|
      t.integer :units

      t.timestamps
    end
  end
end
