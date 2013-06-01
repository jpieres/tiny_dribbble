require 'spec_helper'

describe User do
  before { @user = User.new(name: "Test User", email: "test@example.com") }

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:id) }

end
