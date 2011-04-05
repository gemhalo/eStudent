require 'spec_helper'

describe "curriculums/index.html.erb" do
  before(:each) do
    assign(:curriculums, [
      stub_model(Curriculum,
        :program_id => 1,
        :class_year_id => 1,
        :semester_id => 1
      ),
      stub_model(Curriculum,
        :program_id => 1,
        :class_year_id => 1,
        :semester_id => 1
      )
    ])
  end

  it "renders a list of curriculums" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
