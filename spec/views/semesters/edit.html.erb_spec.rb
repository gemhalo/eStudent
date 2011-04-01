require 'spec_helper'

describe "semesters/edit.html.erb" do
  before(:each) do
    @semester = assign(:semester, stub_model(Semester,
      :name => "MyString"
    ))
  end

  it "renders the edit semester form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => semesters_path(@semester), :method => "post" do
      assert_select "input#semester_name", :name => "semester[name]"
    end
  end
end
