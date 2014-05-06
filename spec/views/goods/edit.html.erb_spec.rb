require 'spec_helper'

describe "goods/edit" do
  before(:each) do
    @good = assign(:good, stub_model(Good,
      :name => "MyText",
      :type => "MyText",
      :user => nil,
      :parent_app => nil,
      :app_instance => nil
    ))
  end

  it "renders the edit good form" do
    render

    assert_select "form[action=?][method=?]", good_path(@good), "post" do
      assert_select "textarea#good_name[name=?]", "good[name]"
      assert_select "textarea#good_type[name=?]", "good[type]"
      assert_select "input#good_user[name=?]", "good[user]"
      assert_select "input#good_parent_app[name=?]", "good[parent_app]"
      assert_select "input#good_app_instance[name=?]", "good[app_instance]"
    end
  end
end
