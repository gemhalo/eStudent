class Room < ActiveRecord::Base
  belongs_to :building
  has_many   :dormitories
end

