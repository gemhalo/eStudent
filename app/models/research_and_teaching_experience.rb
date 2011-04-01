class ResearchAndTeachingExperience < ActiveRecord::Base
  belongs_to :applicant
 # validates_presence_of :description
end
