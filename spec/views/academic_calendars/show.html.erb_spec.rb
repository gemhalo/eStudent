require 'spec_helper'

describe "academic_calendars/show.html.erb" do
  before(:each) do
    @academic_calendar = assign(:academic_calendar, stub_model(AcademicCalendar))
  end

  it "renders attributes in <p>" do
    render
  end
end
