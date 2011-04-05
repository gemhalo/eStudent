require 'spec_helper'

describe "academic_caledars/edit.html.erb" do
  before(:each) do
    @academic_caledar = assign(:academic_caledar, stub_model(AcademicCaledar))
  end

  it "renders the edit academic_caledar form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => academic_caledars_path(@academic_caledar), :method => "post" do
    end
  end
end
