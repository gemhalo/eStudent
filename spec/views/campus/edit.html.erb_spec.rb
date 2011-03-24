require 'spec_helper'

describe "campus/edit.html.erb" do
  before(:each) do
    @campus = assign(:campus, stub_model(Campus,
      :name => "MyString",
      :campus_telephone => 1,
      :campus_pobox => "MyString",
      :campus_email => "MyString"
    ))
  end

  it "renders the edit campus form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => campus_index_path(@campus), :method => "post" do
      assert_select "input#campus_name", :name => "campus[name]"
      assert_select "input#campus_campus_telephone", :name => "campus[campus_telephone]"
      assert_select "input#campus_campus_pobox", :name => "campus[campus_pobox]"
      assert_select "input#campus_campus_email", :name => "campus[campus_email]"
    end
  end
end
