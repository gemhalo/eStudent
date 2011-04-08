class Admission < ActiveRecord::Base
  belongs_to :admission_type
  belongs_to :enrollment_type
  has_many   :programs

  scope :undergraduate, self.where("admission_type_id in (?)",AdmissionType.where("name =?","undergraduate".capitalize))
  scope :postgraduate, self.where("admission_type_id in (?)",AdmissionType.where("name =?","postgraduate".capitalize))
  scope :by_admission_and_enrollment,
    lambda { |admission, enrollment| where("admission_type_id = ? and enrollment_type_id = ?",
             AdmissionType.where("name like ?","%#{admission.capitalize}%").first.id,
             EnrollmentType.where("name like ?","%#{enrollment.capitalize}%").first.id
             )

    }

  def name
    [ self.admission_type.name.capitalize,self.enrollment_type.name.capitalize ].join('-')
  end

end

