require 'spec_helper'

describe "menuitems/edit.html.erb" do
  before(:each) do
    @menuitem = assign(:menuitem, stub_model(Menuitem,
      :title => "",
      :linkpath => "",
      :linkicon => "",
      :role_id => "",
      :catagory => "MyString"
    ))
  end

  it "renders the edit menuitem form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => menuitems_path(@menuitem), :method => "post" do
      assert_select "input#menuitem_title", :name => "menuitem[title]"
      assert_select "input#menuitem_linkpath", :name => "menuitem[linkpath]"
      assert_select "input#menuitem_linkicon", :name => "menuitem[linkicon]"
      assert_select "input#menuitem_role_id", :name => "menuitem[role_id]"
      assert_select "input#menuitem_catagory", :name => "menuitem[catagory]"
    end
  end
end
