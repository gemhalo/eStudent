require 'spec_helper'

describe "enrollement_types/new.html.erb" do
  before(:each) do
    assign(:enrollement_type, stub_model(EnrollementType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new enrollement_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => enrollement_types_path, :method => "post" do
      assert_select "input#enrollement_type_name", :name => "enrollement_type[name]"
    end
  end
end
