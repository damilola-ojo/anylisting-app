class CreateListingSavings < ActiveRecord::Migration[7.0]
  def change
    create_table :listing_savings do |t|
      t.integer :user_id, null: false
      t.integer :listing_id, null: false

      t.timestamps
    end
  end
end
