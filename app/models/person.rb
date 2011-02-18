class Person < ActiveRecord::Base
  has_many :applicants
  #validates :name , :presence => true
  #validates :father_name,  :presence => true

  def full_name
    def full_name
        [name,father_name,grand_father_name].join(' ')
    end
  end
end
