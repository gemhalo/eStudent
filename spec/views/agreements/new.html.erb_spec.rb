require 'spec_helper'

describe "agreements/new.html.erb" do
  before(:each) do
    assign(:agreement, stub_model(Agreement,
      :agreement => false,
      :applicant_id => 1
    ).as_new_record)
  end

  it "renders new agreement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => agreements_path, :method => "post" do
      assert_select "input#agreement_agreement", :name => "agreement[agreement]"
      assert_select "input#agreement_applicant_id", :name => "agreement[applicant_id]"
    end
  end
end
