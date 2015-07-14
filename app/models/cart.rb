# == Schema Information
#
# Table name: carts
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :line_items

  def total_items
    line_items.sum(:quantity)
  end

  def subtotal
    line_items.inject(0) { |memo, line_item| memo += line_item.subtotal }
  end
end
