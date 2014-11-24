require 'spec_helper'

describe SimilarComputersController do

  describe "GET 'menu'" do
    it "returns http success" do
      get 'menu'
      response.should be_success
    end
  end

  describe "GET 'similar_price'" do
    it "returns http success" do
      get 'similar_price'
      response.should be_success
    end
  end

  describe "GET 'similar_components'" do
    it "returns http success" do
      get 'similar_components'
      response.should be_success
    end
  end

end
