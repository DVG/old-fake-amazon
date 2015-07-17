# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  username               :string
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  prime_member           :boolean
#  created_at             :datetime
#  updated_at             :datetime
#

FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user_#{n}@email.com" }
    username "Bradley"
    password "supersecret"
    password_confirmation { |u| u.password }
  end
end