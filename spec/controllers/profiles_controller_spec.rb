require 'spec_helper'

describe ProfilesController do

  describe "GET 'view'" do
    it "returns http success" do
      get 'view'
      response.should be_success
    end
  end

  describe "GET 'edit'" do
    it "returns http success" do
      get 'edit'
      response.should be_success
    end
  end

end
