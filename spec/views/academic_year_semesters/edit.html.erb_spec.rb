require 'spec_helper'

describe "academic_year_semesters/edit.html.erb" do
  before(:each) do
    @academic_year_semester = assign(:academic_year_semester, stub_model(AcademicYearSemester,
      :academic_year_id => 1,
      :semester_id => 1,
      :status => false
    ))
  end

  it "renders the edit academic_year_semester form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => academic_year_semesters_path(@academic_year_semester), :method => "post" do
      assert_select "input#academic_year_semester_academic_year_id", :name => "academic_year_semester[academic_year_id]"
      assert_select "input#academic_year_semester_semester_id", :name => "academic_year_semester[semester_id]"
      assert_select "input#academic_year_semester_status", :name => "academic_year_semester[status]"
    end
  end
end
