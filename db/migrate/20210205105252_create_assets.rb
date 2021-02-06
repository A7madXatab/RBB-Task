class CreateAssets < ActiveRecord::Migration[6.0]
  def change
    create_table :assets do |t|
      t.string :owner
      t.integer :sqmt
      t.decimal :price
      t.string :address
      t.references :assetable, null: false, polymorphic: true

      t.timestamps
    end
  end
end
