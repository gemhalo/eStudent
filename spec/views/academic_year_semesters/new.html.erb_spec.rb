require 'spec_helper'

describe "academic_year_semesters/new.html.erb" do
  before(:each) do
    assign(:academic_year_semester, stub_model(AcademicYearSemester,
      :academic_year_id => 1,
      :semester_id => 1,
      :status => false
    ).as_new_record)
  end

  it "renders new academic_year_semester form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => academic_year_semesters_path, :method => "post" do
      assert_select "input#academic_year_semester_academic_year_id", :name => "academic_year_semester[academic_year_id]"
      assert_select "input#academic_year_semester_semester_id", :name => "academic_year_semester[semester_id]"
      assert_select "input#academic_year_semester_status", :name => "academic_year_semester[status]"
    end
  end
end
