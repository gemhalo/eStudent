require 'spec_helper'

describe "borrowed_items/new.html.erb" do
  before(:each) do
    assign(:borrowed_item, stub_model(BorrowedItem,
      :id_number => "MyString",
      :employee_id_number => "MyString",
      :item_name => "MyString",
      :item_type => "MyString",
      :borrowed_from => "MyString",
      :cleared => false
    ).as_new_record)
  end

  it "renders new borrowed_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => borrowed_items_path, :method => "post" do
      assert_select "input#borrowed_item_id_number", :name => "borrowed_item[id_number]"
      assert_select "input#borrowed_item_employee_id_number", :name => "borrowed_item[employee_id_number]"
      assert_select "input#borrowed_item_item_name", :name => "borrowed_item[item_name]"
      assert_select "input#borrowed_item_item_type", :name => "borrowed_item[item_type]"
      assert_select "input#borrowed_item_borrowed_from", :name => "borrowed_item[borrowed_from]"
      assert_select "input#borrowed_item_cleared", :name => "borrowed_item[cleared]"
    end
  end
end
