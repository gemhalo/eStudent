require 'spec_helper'

describe "events/new.html.erb" do
  before(:each) do
    assign(:event, stub_model(Event,
      :academic_calander_id => 1,
      :title => "MyString",
      :detail => "MyString"
    ).as_new_record)
  end

  it "renders new event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => events_path, :method => "post" do
      assert_select "input#event_academic_calander_id", :name => "event[academic_calander_id]"
      assert_select "input#event_title", :name => "event[title]"
      assert_select "input#event_detail", :name => "event[detail]"
    end
  end
end
