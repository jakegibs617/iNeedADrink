class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.string :title, null: false
      t.string :image_url
      t.text :description
      t.text :instructions
      t.text :ingredients
      t.string :season
      t.boolean :featured, null: false, default: false

      t.timestamps null: false
      t.index :title, unique: true
    end
  end
end
