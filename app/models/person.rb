class Person < ActiveRecord::Base
  has_many :applicants

  def full_name
    def full_name
        [name,father_name,grand_father_name].join(' ')
    end
  end
end
