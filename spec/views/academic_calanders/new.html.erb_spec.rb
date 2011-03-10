require 'spec_helper'

describe "academic_calanders/new.html.erb" do
  before(:each) do
    assign(:academic_calander, stub_model(AcademicCalander).as_new_record)
  end

  it "renders new academic_calander form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => academic_calanders_path, :method => "post" do
    end
  end
end
