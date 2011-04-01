require 'spec_helper'

describe "academic_years/show.html.erb" do
  before(:each) do
    @academic_year = assign(:academic_year, stub_model(AcademicYear,
      :status => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end
