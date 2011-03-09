class Person < ActiveRecord::Base
  has_many :applicant
  #validates :name , :presence => true
  #validates :father_name,  :presence => true

    has_attached_file :photo,
   :url => "/:class/:attachment/:id/:style_:basename.:extension",
   :default_url => "/:class/:attachment/missing_/:style_default.jpg",
    :styles => {:thumb=> "100x100#", :small => ["70x70>", :jpg] },
    :default_style => :thumb,
    :whiny_thumbnails => true,
    :path => ":rails_root/public/:class/:attachment/:id/:style_:basename.:extension"

# validates_attachment_presence :photo
 #validates_attachment_content_type :photo, :content_type => 'image/jpeg'

  def full_name
    def full_name
        [name,father_name,grand_father_name].join(' ')
    end
  end
end
