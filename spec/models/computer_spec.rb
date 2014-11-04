# == Schema Information
#
# Table name: computers
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  status     :boolean
#  date       :string(255)
#  price      :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Computer do
  let(:computer) { FactoryGirl.create(:computer) }
  #before do
  #  @computer = Computer.new(name: "Example Comp", status: false, price: 2)
 # end
  before { @computer = Computer.new(name: "ExampleComp", status: false, price: 0, user_id:1) }

  subject { @computer }

  it { should respond_to(:name) } #test for existence of following attr. 
  it { should respond_to(:status) }
  it { should respond_to(:price) }
  it { should respond_to(:user_id) }
  it { should respond_to(:motherboard_id) }
  it { should respond_to(:hd_id) }
  it { should respond_to(:ram_id) }
  it { should respond_to(:gpu_id) }
  it { should respond_to(:cpu_id) }
  it { should respond_to(:power_id) }
  #its(:user) { should == user }

  it { should be_valid }
  
   describe "when user_id is not present" do
    before { @computer.user_id = nil }
    it { should_not be_valid }
  end

   describe "accessible attributes" do
    it "should not allow access to user_id" do
      expect do
        Computer.new(user_id: user.id)
      end
      #.to raise_error(ActiveModel::MassAssignmentSecurity::Error)
    end
  end

  describe "when name is not present" do
    before { @computer.name = " " }
    it { should_not be_valid }
  end

  describe "when status is not present" do
   # before { @computer.status = nil }
   # it { should_not be_valid }
  end

  describe "when price is not present" do
    before { @computer.price = nil }
    it { should_not be_valid }
  end

  describe "when name is too long" do
    before { @computer.name = "a" * 60 }
    it { should_not be_valid }
  end 

  describe "when price is negative" do
    #before { @computer.price < 0 }
    #it { should_not be_valid }
  end 

  describe "when name is already taken" do
    before do
      computer_with_same_name = @computer.dup
      computer_with_same_name.name = @computer.name.upcase
      computer_with_same_name.save
    end

    it { should_not be_valid }
  end

end
