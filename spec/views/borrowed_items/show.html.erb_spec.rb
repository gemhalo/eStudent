require 'spec_helper'

describe "borrowed_items/show.html.erb" do
  before(:each) do
    @borrowed_item = assign(:borrowed_item, stub_model(BorrowedItem,
      :id_number => "Id Number",
      :employee_id_number => "Employee Id Number",
      :item_name => "Item Name",
      :item_type => "Item Type",
      :borrowed_from => "Borrowed From",
      :cleared => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Id Number/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Employee Id Number/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Item Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Item Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Borrowed From/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end
