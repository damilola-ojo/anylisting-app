class CreateListings < ActiveRecord::Migration[7.0]
  def change
    create_table :listings do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.integer :capacity, null: false
      t.string :location, null: false
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
