class CreateCats < ActiveRecord::Migration[7.1]
  def change
    create_table :cats do |t|
      t.integer :legs, default: 4
      t.string :color
      t.string :gender
      t.boolean :missing, default: true
      t.string :location, null: false
      t.string :image_url, null: false

      t.timestamps
    end
  end
end
