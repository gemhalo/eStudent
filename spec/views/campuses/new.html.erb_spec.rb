require 'spec_helper'

describe "campuses/new.html.erb" do
  before(:each) do
    assign(:campuse, stub_model(Campuse,
      :name => "MyString",
      :campus_telephone => 1,
      :campus_pobox => "MyString",
      :campus_email => "MyString"
    ).as_new_record)
  end

  it "renders new campuse form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => campuses_path, :method => "post" do
      assert_select "input#campuse_name", :name => "campuse[name]"
      assert_select "input#campuse_campus_telephone", :name => "campuse[campus_telephone]"
      assert_select "input#campuse_campus_pobox", :name => "campuse[campus_pobox]"
      assert_select "input#campuse_campus_email", :name => "campuse[campus_email]"
    end
  end
end
