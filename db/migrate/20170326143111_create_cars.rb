class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.string :url, primary: true, null: false
      t.string :make
      t.string :model
      t.string :variant
      t.integer :price
      t.string :transmission
      t.integer :year
      t.integer :kilometres
      t.boolean :registered
      t.date :registration_expiry

      t.timestamps
    end

    add_index :cars, :make
    add_index :cars, :model
    add_index :cars, :variant
    add_index :cars, :transmission
    add_index :cars, :registered
    add_index :cars, :registration_expiry
  end
end
