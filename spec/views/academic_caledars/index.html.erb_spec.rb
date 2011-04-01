require 'spec_helper'

describe "academic_caledars/index.html.erb" do
  before(:each) do
    assign(:academic_caledars, [
      stub_model(AcademicCaledar),
      stub_model(AcademicCaledar)
    ])
  end

  it "renders a list of academic_caledars" do
    render
  end
end
