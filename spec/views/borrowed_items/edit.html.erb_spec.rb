require 'spec_helper'

describe "borrowed_items/edit.html.erb" do
  before(:each) do
    @borrowed_item = assign(:borrowed_item, stub_model(BorrowedItem,
      :id_number => "MyString",
      :employee_id_number => "MyString",
      :item_name => "MyString",
      :item_type => "MyString",
      :borrowed_from => "MyString",
      :cleared => false
    ))
  end

  it "renders the edit borrowed_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => borrowed_items_path(@borrowed_item), :method => "post" do
      assert_select "input#borrowed_item_id_number", :name => "borrowed_item[id_number]"
      assert_select "input#borrowed_item_employee_id_number", :name => "borrowed_item[employee_id_number]"
      assert_select "input#borrowed_item_item_name", :name => "borrowed_item[item_name]"
      assert_select "input#borrowed_item_item_type", :name => "borrowed_item[item_type]"
      assert_select "input#borrowed_item_borrowed_from", :name => "borrowed_item[borrowed_from]"
      assert_select "input#borrowed_item_cleared", :name => "borrowed_item[cleared]"
    end
  end
end
