require 'spec_helper'

describe "academic_calendars/edit.html.erb" do
  before(:each) do
    @academic_calendar = assign(:academic_calendar, stub_model(AcademicCalendar))
  end

  it "renders the edit academic_calendar form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => academic_calendars_path(@academic_calendar), :method => "post" do
    end
  end
end
