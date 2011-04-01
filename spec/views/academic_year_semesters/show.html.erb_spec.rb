require 'spec_helper'

describe "academic_year_semesters/show.html.erb" do
  before(:each) do
    @academic_year_semester = assign(:academic_year_semester, stub_model(AcademicYearSemester,
      :academic_year_id => 1,
      :semester_id => 1,
      :status => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end
