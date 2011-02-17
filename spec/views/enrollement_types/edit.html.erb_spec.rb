require 'spec_helper'

describe "enrollement_types/edit.html.erb" do
  before(:each) do
    @enrollement_type = assign(:enrollement_type, stub_model(EnrollementType,
      :name => "MyString"
    ))
  end

  it "renders the edit enrollement_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => enrollement_types_path(@enrollement_type), :method => "post" do
      assert_select "input#enrollement_type_name", :name => "enrollement_type[name]"
    end
  end
end
