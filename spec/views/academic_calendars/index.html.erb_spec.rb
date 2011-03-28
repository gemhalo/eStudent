require 'spec_helper'

describe "academic_calendars/index.html.erb" do
  before(:each) do
    assign(:academic_calendars, [
      stub_model(AcademicCalendar),
      stub_model(AcademicCalendar)
    ])
  end

  it "renders a list of academic_calendars" do
    render
  end
end
