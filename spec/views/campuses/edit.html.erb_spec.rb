require 'spec_helper'

describe "campuses/edit.html.erb" do
  before(:each) do
    @campus = assign(:campus, stub_model(Campus,
      :name => "MyString"
    ))
  end

  it "renders the edit campus form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => campuses_path(@campus), :method => "post" do
      assert_select "input#campus_name", :name => "campus[name]"
    end
  end
end
