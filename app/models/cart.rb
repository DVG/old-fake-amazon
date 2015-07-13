class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :line_items

  def total_items
    line_items.sum(:quantity)
  end
end
