require 'spec_helper'

describe Shot do

  let(:user) { User.create(name: "Test User", email: "test@example.com", password: "12345678") }
  before { @shot = user.shots.build(description: "Shot 1 for User 1") }

  subject { @shot }

  it { should respond_to(:description) }
  it { should respond_to(:user_id) }
  it { should respond_to(:user) }
  its(:user) { should == user }

end
