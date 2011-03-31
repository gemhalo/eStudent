require 'spec_helper'

describe "academic_years/new.html.erb" do
  before(:each) do
    assign(:academic_year, stub_model(AcademicYear,
      :status => false
    ).as_new_record)
  end

  it "renders new academic_year form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => academic_years_path, :method => "post" do
      assert_select "input#academic_year_status", :name => "academic_year[status]"
    end
  end
end
