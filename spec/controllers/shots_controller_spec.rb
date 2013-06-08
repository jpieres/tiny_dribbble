require 'spec_helper'

describe ShotsController do

  let(:user) { FactoryGirl.create(:user) }
  let(:other_user) { FactoryGirl.create(:user) }
  let(:shot) {other_user.shots.create(description: "Nice shot.")}

  before { sign_in user }
  subject { shot }

  it { should respond_to(:description) }

  describe "liking a shot with Ajax" do

    it "should increment the fans count" do
      expect{xhr :post, :like, :id => shot.id}.to change{shot.fans.count}.by(1)
    end

    it "should respond with success" do
      xhr :post, :like, :id => shot.id  
      response.should be_success
    end
  end

end