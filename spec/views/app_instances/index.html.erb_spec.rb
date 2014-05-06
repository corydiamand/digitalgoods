require 'spec_helper'

describe "app_instances/index" do
  before(:each) do
    assign(:app_instances, [
      stub_model(AppInstance,
        :parent_app => nil,
        :unique_identifier => 1,
        :user => nil
      ),
      stub_model(AppInstance,
        :parent_app => nil,
        :unique_identifier => 1,
        :user => nil
      )
    ])
  end

  it "renders a list of app_instances" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
