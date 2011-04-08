class Program < ActiveRecord::Base
belongs_to :admission
has_many :curriculum
#has_many :curriculum
has_many :course, :through => :curriculum
has_many :student
validates :duration , :presence =>true
validates :total_credit_hour , :presence =>true

def program_name
  [self.name, self.admission.name].join("-For-")
end

end
