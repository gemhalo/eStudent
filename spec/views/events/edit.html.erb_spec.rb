require 'spec_helper'

describe "events/edit.html.erb" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :academic_calander_id => 1,
      :title => "MyString",
      :detail => "MyString"
    ))
  end

  it "renders the edit event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => events_path(@event), :method => "post" do
      assert_select "input#event_academic_calander_id", :name => "event[academic_calander_id]"
      assert_select "input#event_title", :name => "event[title]"
      assert_select "input#event_detail", :name => "event[detail]"
    end
  end
end
