require 'spec_helper'

describe "academic_calanders/show.html.erb" do
  before(:each) do
    @academic_calander = assign(:academic_calander, stub_model(AcademicCalander))
  end

  it "renders attributes in <p>" do
    render
  end
end
