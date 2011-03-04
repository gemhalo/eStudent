require 'spec_helper'

describe "educational_backgrounds/edit.html.erb" do
  before(:each) do
    @educational_background = assign(:educational_background, stub_model(EducationalBackground,
      :institution_type => "MyString",
      :institution_name => "MyString",
      :region => "MyString",
      :zone => "MyString",
      :town => "MyString",
      :result => 1,
      :out_of => 1,
      :department => "MyString",
      :college_leave_reason => "MyString",
      :applicant_id => 1
    ))
  end

  it "renders the edit educational_background form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => educational_backgrounds_path(@educational_background), :method => "post" do
      assert_select "input#educational_background_institution_type", :name => "educational_background[institution_type]"
      assert_select "input#educational_background_institution_name", :name => "educational_background[institution_name]"
      assert_select "input#educational_background_region", :name => "educational_background[region]"
      assert_select "input#educational_background_zone", :name => "educational_background[zone]"
      assert_select "input#educational_background_town", :name => "educational_background[town]"
      assert_select "input#educational_background_result", :name => "educational_background[result]"
      assert_select "input#educational_background_out_of", :name => "educational_background[out_of]"
      assert_select "input#educational_background_department", :name => "educational_background[department]"
      assert_select "input#educational_background_college_leave_reason", :name => "educational_background[college_leave_reason]"
      assert_select "input#educational_background_applicant_id", :name => "educational_background[applicant_id]"
    end
  end
end
