require 'spec_helper'

describe "colleges/new.html.erb" do
  before(:each) do
    assign(:college, stub_model(College,
      :name => "MyString",
      :campus_id => 1
    ).as_new_record)
  end

  it "renders new college form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => colleges_path, :method => "post" do
      assert_select "input#college_name", :name => "college[name]"
      assert_select "input#college_campus_id", :name => "college[campus_id]"
    end
  end
end
