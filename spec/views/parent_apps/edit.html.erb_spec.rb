require 'spec_helper'

describe "parent_apps/edit" do
  before(:each) do
    @parent_app = assign(:parent_app, stub_model(ParentApp,
      :name => "MyText"
    ))
  end

  it "renders the edit parent_app form" do
    render

    assert_select "form[action=?][method=?]", parent_app_path(@parent_app), "post" do
      assert_select "textarea#parent_app_name[name=?]", "parent_app[name]"
    end
  end
end
