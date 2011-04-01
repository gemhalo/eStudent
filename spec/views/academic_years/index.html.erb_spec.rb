require 'spec_helper'

describe "academic_years/index.html.erb" do
  before(:each) do
    assign(:academic_years, [
      stub_model(AcademicYear,
        :status => false
      ),
      stub_model(AcademicYear,
        :status => false
      )
    ])
  end

  it "renders a list of academic_years" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
