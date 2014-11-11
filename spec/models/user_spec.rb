require 'rails_helper'

describe User do
  let(:alex) { FactoryGirl.build :alex }
  subject { alex }
  it { should respond_to :fname }
  it { should respond_to :lname }
  it { should respond_to :email }
  it { should respond_to :password_digest }

end
