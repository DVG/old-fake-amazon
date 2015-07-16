# == Schema Information
#
# Table name: shipping_methods
#
#  identifier     :integer          primary key
#  name           :string
#  price_per_item :decimal(8, 2)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

FactoryGirl.define do
  factory :shipping_method do
    
  end

end
