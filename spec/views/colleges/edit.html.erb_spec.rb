require 'spec_helper'

describe "colleges/edit.html.erb" do
  before(:each) do
    @college = assign(:college, stub_model(College,
      :name => "MyString",
      :campus_id => 1
    ))
  end

  it "renders the edit college form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => colleges_path(@college), :method => "post" do
      assert_select "input#college_name", :name => "college[name]"
      assert_select "input#college_campus_id", :name => "college[campus_id]"
    end
  end
end
