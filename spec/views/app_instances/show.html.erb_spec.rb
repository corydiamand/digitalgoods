require 'spec_helper'

describe "app_instances/show" do
  before(:each) do
    @app_instance = assign(:app_instance, stub_model(AppInstance,
      :parent_app => nil,
      :unique_identifier => 1,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
    expect(rendered).to match(//)
  end
end
