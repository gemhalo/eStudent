class RelevantPublication < ActiveRecord::Base
  belongs_to :applicant

   has_attached_file :fs,
    :url => "/:class/:attachment/:id/:style_:basename.:extension",
    :default_url => "/:class/:attachment/missing_/:style_default.jpg",
    :path => ":rails_root/public/:class/:attachment/:id/:style_:basename.:extension"
end
