require 'spec_helper'

describe "menuitems/show.html.erb" do
  before(:each) do
    @menuitem = assign(:menuitem, stub_model(Menuitem,
      :title => "",
      :linkpath => "",
      :linkicon => "",
      :role_id => "",
      :catagory => "Catagory"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Catagory/)
  end
end
