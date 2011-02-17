require 'spec_helper'

describe "nationalities/edit.html.erb" do
  before(:each) do
    @nationality = assign(:nationality, stub_model(Nationality,
      :name => "MyString"
    ))
  end

  it "renders the edit nationality form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => nationalities_path(@nationality), :method => "post" do
      assert_select "input#nationality_name", :name => "nationality[name]"
    end
  end
end
