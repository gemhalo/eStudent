class Admission < ActiveRecord::Base
  belongs_to :admission_type
  belongs_to :enrollment_type
  has_many   :programs

  scope :undergraduate, self.where("admission_type_id in (?)",AdmissionType.where("name =?","undergraduate".capitalize))
  scope :postgraduate, self.where("admission_type_id in (?)",AdmissionType.where("name =?","postgraduate".capitalize))

  def name
    [ self.admission_type.name.capitalize,self.enrollment_type.name.capitalize ].join('-')
  end
  #def undergraduate(enrollment=nil)
    #enrollment.nil? return self.undergraduate
    #self.undergraduate.where("enrollment_type_id in (?)",enrollment.capitalize)
  #end

end

