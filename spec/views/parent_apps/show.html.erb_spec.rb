require 'spec_helper'

describe "parent_apps/show" do
  before(:each) do
    @parent_app = assign(:parent_app, stub_model(ParentApp,
      :name => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
