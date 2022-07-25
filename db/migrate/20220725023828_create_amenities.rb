class CreateAmenities < ActiveRecord::Migration[7.0]
  def change
    create_table :amenities do |t|
      t.string :name, null: false
      t.references :listing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
