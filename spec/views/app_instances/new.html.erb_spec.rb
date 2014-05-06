require 'spec_helper'

describe "app_instances/new" do
  before(:each) do
    assign(:app_instance, stub_model(AppInstance,
      :parent_app => nil,
      :unique_identifier => 1,
      :user => nil
    ).as_new_record)
  end

  it "renders new app_instance form" do
    render

    assert_select "form[action=?][method=?]", app_instances_path, "post" do
      assert_select "input#app_instance_parent_app[name=?]", "app_instance[parent_app]"
      assert_select "input#app_instance_unique_identifier[name=?]", "app_instance[unique_identifier]"
      assert_select "input#app_instance_user[name=?]", "app_instance[user]"
    end
  end
end
