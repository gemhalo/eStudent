require 'spec_helper'

describe "curriculums/show.html.erb" do
  before(:each) do
    @curriculum = assign(:curriculum, stub_model(Curriculum,
      :course_id => 1,
      :program_id => 1,
      :course_type => 1,
      :semester_id => 1,
      :class_year_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
