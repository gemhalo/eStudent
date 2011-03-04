require 'spec_helper'

describe "research_and_teaching_experiences/show.html.erb" do
  before(:each) do
    @research_and_teaching_experience = assign(:research_and_teaching_experience, stub_model(ResearchAndTeachingExperience,
      :description => "Description",
      :applicant_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
