require 'spec_helper'

describe "parent_apps/index" do
  before(:each) do
    assign(:parent_apps, [
      stub_model(ParentApp,
        :name => "MyText"
      ),
      stub_model(ParentApp,
        :name => "MyText"
      )
    ])
  end

  it "renders a list of parent_apps" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
