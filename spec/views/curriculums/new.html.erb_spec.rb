require 'spec_helper'

describe "curriculums/new.html.erb" do
  before(:each) do
    assign(:curriculum, stub_model(Curriculum,
      :program_id => 1,
      :class_year_id => 1,
      :semester_id => 1
    ).as_new_record)
  end

  it "renders new curriculum form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => curriculums_path, :method => "post" do
      assert_select "input#curriculum_program_id", :name => "curriculum[program_id]"
      assert_select "input#curriculum_class_year_id", :name => "curriculum[class_year_id]"
      assert_select "input#curriculum_semester_id", :name => "curriculum[semester_id]"
    end
  end
end
