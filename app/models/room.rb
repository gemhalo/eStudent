class Room < ActiveRecord::Base
  belongs_to :building
  has_one :dormitory
end
