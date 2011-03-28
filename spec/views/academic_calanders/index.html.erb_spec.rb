require 'spec_helper'

describe "academic_calanders/index.html.erb" do
  before(:each) do
    assign(:academic_calanders, [
      stub_model(AcademicCalander),
      stub_model(AcademicCalander)
    ])
  end

  it "renders a list of academic_calanders" do
    render
  end
end
