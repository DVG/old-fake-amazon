# == Schema Information
#
# Table name: shipping_addresses
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  addressee      :string
#  street_address :string
#  city           :string
#  state_code     :string
#  zip_code       :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

FactoryGirl.define do
  factory :shipping_address do
    
  end

end
