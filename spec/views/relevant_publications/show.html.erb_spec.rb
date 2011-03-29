require 'spec_helper'

describe "relevant_publications/show.html.erb" do
  before(:each) do
    @relevant_publication = assign(:relevant_publication, stub_model(RelevantPublication,
      :description => "Description",
      :publication_title => "Publication Title",
      :attachment_file_name => "Attachment File Name",
      :attachment_content_type => "Attachment Content Type",
      :attachment_file_size => 1,
      :applicant_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Publication Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Attachment File Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Attachment Content Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
