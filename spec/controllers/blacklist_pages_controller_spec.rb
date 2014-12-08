require 'spec_helper'

describe BlacklistPagesController do

  describe "GET 'blacklist'" do
    it "returns http success" do
      get 'blacklist'
      response.should be_success
    end
  end

  describe "GET 'motherboard'" do
    it "returns http success" do
      get 'motherboard'
      response.should be_success
    end
  end

  describe "GET 'cpu'" do
    it "returns http success" do
      get 'cpu'
      response.should be_success
    end
  end

  describe "GET 'ram'" do
    it "returns http success" do
      get 'ram'
      response.should be_success
    end
  end

  describe "GET 'gpu'" do
    it "returns http success" do
      get 'gpu'
      response.should be_success
    end
  end

  describe "GET 'hd'" do
    it "returns http success" do
      get 'hd'
      response.should be_success
    end
  end

  describe "GET 'power'" do
    it "returns http success" do
      get 'power'
      response.should be_success
    end
  end

end
