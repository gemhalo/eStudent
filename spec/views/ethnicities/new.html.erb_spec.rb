require 'spec_helper'

describe "ethnicities/new.html.erb" do
  before(:each) do
    assign(:ethnicity, stub_model(Ethnicity,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new ethnicity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ethnicities_path, :method => "post" do
      assert_select "input#ethnicity_name", :name => "ethnicity[name]"
    end
  end
end
