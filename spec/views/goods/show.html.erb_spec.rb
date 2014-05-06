require 'spec_helper'

describe "goods/show" do
  before(:each) do
    @good = assign(:good, stub_model(Good,
      :name => "MyText",
      :type => "MyText",
      :user => nil,
      :parent_app => nil,
      :app_instance => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
