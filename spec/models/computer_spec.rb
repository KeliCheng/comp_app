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
  before { @computer = Computer.new(name: "Example Comp", status: false, price: 0) }

  subject { @computer }

  it { should respond_to(:name) } #test for existence of following attr. 
  it { should respond_to(:status) }
  it { should respond_to(:price) }

  it { should be_valid }

  describe "when name is not present" do
    before { @computer.name = " " }
    it { should_not be_valid }
  end

  describe "when status is not present" do
    #before { @computer.status = nil }
    #it { should_not be_valid }
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
