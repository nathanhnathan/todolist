# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  fname           :string(255)
#  lname           :string(255)
#  email           :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  password_digest :string(255)
#

FactoryGirl.define do
  factory :alex, class: User do
    fname 'Alex'
    lname 'Meyers'
    email 'alex@daapr.com'
    password 'verynice'
  end
   factory :invalid_post, class: Post do
    body 'Decapitated'
end
end
