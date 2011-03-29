require 'spec_helper'

describe "research_and_teaching_experiences/index.html.erb" do
  before(:each) do
    assign(:research_and_teaching_experiences, [
      stub_model(ResearchAndTeachingExperience,
        :description => "Description",
        :applicant_id => 1
      ),
      stub_model(ResearchAndTeachingExperience,
        :description => "Description",
        :applicant_id => 1
      )
    ])
  end

  it "renders a list of research_and_teaching_experiences" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
