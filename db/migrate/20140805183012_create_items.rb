class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.decimal :price, precision: 8, scale: 2
      t.integer :inventory
      t.references :category, index: true
    end
  end
end
