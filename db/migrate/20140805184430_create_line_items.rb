class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :quantity, default: 1
      t.references :item, index: true
      t.references :cart, index: true
    end
  end
end
