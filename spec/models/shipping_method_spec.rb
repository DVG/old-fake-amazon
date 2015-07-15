# == Schema Information
#
# Table name: shipping_methods
#
#  id             :integer
#  name           :string
#  price_per_item :decimal(8, 2)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'rails_helper'

RSpec.describe ShippingMethod, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
