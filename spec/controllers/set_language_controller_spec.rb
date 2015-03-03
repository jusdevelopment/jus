require 'spec_helper'

describe SetLanguageController do

  describe "GET 'english'" do
    it "returns http success" do
      get 'english'
      response.should be_success
    end
  end

  describe "GET 'turkish'" do
    it "returns http success" do
      get 'turkish'
      response.should be_success
    end
  end

end
