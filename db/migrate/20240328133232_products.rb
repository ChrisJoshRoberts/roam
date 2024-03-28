class Products < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.string :location
      t.boolean :is_available, default: true
      t.string :photos, array: true, default: []
      t.string :category
      t.references :user, null: false, foreign_key: true
    end
  end
end
