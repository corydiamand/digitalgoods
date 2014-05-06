require 'spec_helper'

describe "Goods" do
  describe "GET /goods" do
    it "works! (now write some real specs)" do
      get goods_path
      expect(response.status).to be(200)
    end
  end
end
