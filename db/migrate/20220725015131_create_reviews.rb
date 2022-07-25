class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.text :content, null: false
      t.references :listing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
