require 'spec_helper'

describe "research_and_teaching_experiences/edit.html.erb" do
  before(:each) do
    @research_and_teaching_experience = assign(:research_and_teaching_experience, stub_model(ResearchAndTeachingExperience,
      :description => "MyString",
      :applicant_id => 1
    ))
  end

  it "renders the edit research_and_teaching_experience form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => research_and_teaching_experiences_path(@research_and_teaching_experience), :method => "post" do
      assert_select "input#research_and_teaching_experience_description", :name => "research_and_teaching_experience[description]"
      assert_select "input#research_and_teaching_experience_applicant_id", :name => "research_and_teaching_experience[applicant_id]"
    end
  end
end
