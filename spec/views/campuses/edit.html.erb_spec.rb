require 'spec_helper'

describe "campuses/edit.html.erb" do
  before(:each) do
    @campuse = assign(:campuse, stub_model(Campuse,
      :name => "MyString",
      :campus_telephone => 1,
      :campus_pobox => "MyString",
      :campus_email => "MyString"
    ))
  end

  it "renders the edit campuse form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => campuses_path(@campuse), :method => "post" do
      assert_select "input#campuse_name", :name => "campuse[name]"
      assert_select "input#campuse_campus_telephone", :name => "campuse[campus_telephone]"
      assert_select "input#campuse_campus_pobox", :name => "campuse[campus_pobox]"
      assert_select "input#campuse_campus_email", :name => "campuse[campus_email]"
    end
  end
end
