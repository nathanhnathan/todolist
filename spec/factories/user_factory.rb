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
	factory :user do
		fname 'Feifan'
		lname 'Zhou'
		email 'feifan@tunetap.com'
		password 'letmein'
	end
	factory :alex, class:User do
		fname 'Alex'
		lname 'Meyers'
		email 'alex@daapr.com'
		password 'verynice'
	end
end