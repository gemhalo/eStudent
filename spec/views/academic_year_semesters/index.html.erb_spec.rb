require 'spec_helper'

describe "academic_year_semesters/index.html.erb" do
  before(:each) do
    assign(:academic_year_semesters, [
      stub_model(AcademicYearSemester,
        :academic_year_id => 1,
        :semester_id => 1,
        :status => false
      ),
      stub_model(AcademicYearSemester,
        :academic_year_id => 1,
        :semester_id => 1,
        :status => false
      )
    ])
  end

  it "renders a list of academic_year_semesters" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
