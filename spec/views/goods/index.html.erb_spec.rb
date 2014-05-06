require 'spec_helper'

describe "goods/index" do
  before(:each) do
    assign(:goods, [
      stub_model(Good,
        :name => "MyText",
        :type => "MyText",
        :user => nil,
        :parent_app => nil,
        :app_instance => nil
      ),
      stub_model(Good,
        :name => "MyText",
        :type => "MyText",
        :user => nil,
        :parent_app => nil,
        :app_instance => nil
      )
    ])
  end

  it "renders a list of goods" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
