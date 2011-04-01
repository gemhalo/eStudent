require 'spec_helper'

describe "academic_years/edit.html.erb" do
  before(:each) do
    @academic_year = assign(:academic_year, stub_model(AcademicYear,
      :status => false
    ))
  end

  it "renders the edit academic_year form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => academic_years_path(@academic_year), :method => "post" do
      assert_select "input#academic_year_status", :name => "academic_year[status]"
    end
  end
end
