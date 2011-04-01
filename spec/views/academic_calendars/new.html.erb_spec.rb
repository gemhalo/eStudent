require 'spec_helper'

describe "academic_calendars/new.html.erb" do
  before(:each) do
    assign(:academic_calendar, stub_model(AcademicCalendar).as_new_record)
  end

  it "renders new academic_calendar form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => academic_calendars_path, :method => "post" do
    end
  end
end
