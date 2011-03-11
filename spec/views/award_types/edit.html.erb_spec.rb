require 'spec_helper'

describe "award_types/edit.html.erb" do
  before(:each) do
    @award_type = assign(:award_type, stub_model(AwardType,
      :name => "MyString"
    ))
  end

  it "renders the edit award_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => award_types_path(@award_type), :method => "post" do
      assert_select "input#award_type_name", :name => "award_type[name]"
    end
  end
end
