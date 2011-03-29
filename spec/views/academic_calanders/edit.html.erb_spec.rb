require 'spec_helper'

describe "academic_calanders/edit.html.erb" do
  before(:each) do
    @academic_calander = assign(:academic_calander, stub_model(AcademicCalander))
  end

  it "renders the edit academic_calander form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => academic_calanders_path(@academic_calander), :method => "post" do
    end
  end
end
