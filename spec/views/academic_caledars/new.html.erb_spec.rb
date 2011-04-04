require 'spec_helper'

describe "academic_caledars/new.html.erb" do
  before(:each) do
    assign(:academic_caledar, stub_model(AcademicCaledar).as_new_record)
  end

  it "renders new academic_caledar form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => academic_caledars_path, :method => "post" do
    end
  end
end
