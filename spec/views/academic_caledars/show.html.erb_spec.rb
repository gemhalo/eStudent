require 'spec_helper'

describe "academic_caledars/show.html.erb" do
  before(:each) do
    @academic_caledar = assign(:academic_caledar, stub_model(AcademicCaledar))
  end

  it "renders attributes in <p>" do
    render
  end
end
