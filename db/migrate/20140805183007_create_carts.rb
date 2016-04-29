class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.string :name
    end
  end
end
