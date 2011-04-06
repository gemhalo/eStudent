class AddDrop < ActiveRecord::Base
  belongs_to :offered_course
  belongs_to :registration
end
