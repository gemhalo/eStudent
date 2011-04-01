require 'spec_helper'

describe "class_years/new.html.erb" do
  before(:each) do
    assign(:class_year, stub_model(ClassYear,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new class_year form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => class_years_path, :method => "post" do
      assert_select "input#class_year_name", :name => "class_year[name]"
    end
  end
end
