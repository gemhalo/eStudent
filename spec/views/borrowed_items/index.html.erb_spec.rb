require 'spec_helper'

describe "borrowed_items/index.html.erb" do
  before(:each) do
    assign(:borrowed_items, [
      stub_model(BorrowedItem,
        :id_number => "Id Number",
        :employee_id_number => "Employee Id Number",
        :item_name => "Item Name",
        :item_type => "Item Type",
        :borrowed_from => "Borrowed From",
        :cleared => false
      ),
      stub_model(BorrowedItem,
        :id_number => "Id Number",
        :employee_id_number => "Employee Id Number",
        :item_name => "Item Name",
        :item_type => "Item Type",
        :borrowed_from => "Borrowed From",
        :cleared => false
      )
    ])
  end

  it "renders a list of borrowed_items" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Id Number".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Employee Id Number".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Item Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Item Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Borrowed From".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
