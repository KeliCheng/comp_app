require 'spec_helper'

describe User do
  before do
    @user = User.new(name: "Example User", email: "user@example.com",
                     password: "foobar")
  end

  subject { @user }

  #it { should respond_to(:authenticate) }
  # it { should respond_to(:computers) }

  # describe "computer associations" do

  #   before { @user.save }
  #   let!(:older_computer) do
  #     FactoryGirl.create(:computer, user: @user, created_at: 1.day.ago)
  #   end
  #   let!(:newer_computer) do
  #     FactoryGirl.create(:computer, user: @user, created_at: 1.hour.ago)
  #   end

  #   it "should have the right computers in the right order" do
  #     @user.computers.should == [newer_computer, older_computer]
  #   end
  # end
end
