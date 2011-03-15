class EducationalBackground < ActiveRecord::Base
  belongs_to :applicant
  validates_presence_of :institution_type, :institution_name, :result_type, :eheece_code, :school_code, :institution_region, :institution_zone, :institution_town,:result, :out_of

   
  has_attached_file :attachment,
    :url => "/:class/:attachment/:id/:style_:basename.:extension",
    :default_url => "/:class/:attachment/missing_/:style_default.jpg",
    :path => ":rails_root/public/:class/:attachment/:id/:style_:basename.:extension"
end
