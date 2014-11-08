require 'spec_helper'

describe ComputersController do

  describe "GET 'summary'" do
    it "returns http success" do
      get 'summary'
      response.should be_success
    end
  end

end
