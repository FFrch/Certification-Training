class CreateTrees < ActiveRecord::Migration[6.1]
  def change
    create_table :trees do |t|
      t.string :name
      t.string :address
      t.string :string
      t.text :description
      t.integer :price_per_year
      t.string :fruits
      t.integer :quantity_by_year

      t.timestamps
    end
  end
end
