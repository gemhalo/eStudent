require 'spec_helper'

describe "class_years/edit.html.erb" do
  before(:each) do
    @class_year = assign(:class_year, stub_model(ClassYear,
      :name => "MyString"
    ))
  end

  it "renders the edit class_year form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => class_years_path(@class_year), :method => "post" do
      assert_select "input#class_year_name", :name => "class_year[name]"
    end
  end
end
