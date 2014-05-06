require 'spec_helper'

describe "parent_apps/new" do
  before(:each) do
    assign(:parent_app, stub_model(ParentApp,
      :name => "MyText"
    ).as_new_record)
  end

  it "renders new parent_app form" do
    render

    assert_select "form[action=?][method=?]", parent_apps_path, "post" do
      assert_select "textarea#parent_app_name[name=?]", "parent_app[name]"
    end
  end
end
