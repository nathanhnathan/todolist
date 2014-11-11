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

require 'rails_helper'

describe User do
	let(:alex) {FactoryGirl.build :alex}
	subject { alex }
	it { should respond_to :fname }
	it {should respond_to :lname}
	it {should respond_to :email}
	it {should respond_to :password_digest}
	it 'has a display name' do
		expect(alex.name).to eq 'Alex Meyers'
	end
end
