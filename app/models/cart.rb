class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :line_items
  has_many :items, through: :line_items

  def add_item(item)

  end

  def total
    total_price = 0
    self.line_items.each{|line_item| total_price += line_item.quantity * line_item.item.price}
    total_price
  end

  def add_item(new_item_id)
    saved_line_item = self.line_items.find_by(item_id: new_item_id)
    if saved_line_item
      saved_line_item.quantity += 1
      saved_line_item
    else
      self.line_items.new(item_id: new_item_id)
    end
  end
end
