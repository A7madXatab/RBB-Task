class CreateCommericalUnits < ActiveRecord::Migration[6.0]
  def change
    create_table :commerical_units do |t|
      t.integer :shops
      t.integer :parking

      t.timestamps
    end
  end
end
