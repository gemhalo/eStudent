require 'spec_helper'

describe "menuitems/index.html.erb" do
  before(:each) do
    assign(:menuitems, [
      stub_model(Menuitem,
        :title => "",
        :linkpath => "",
        :linkicon => "",
        :role_id => "",
        :catagory => "Catagory"
      ),
      stub_model(Menuitem,
        :title => "",
        :linkpath => "",
        :linkicon => "",
        :role_id => "",
        :catagory => "Catagory"
      )
    ])
  end

  it "renders a list of menuitems" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Catagory".to_s, :count => 2
  end
end
