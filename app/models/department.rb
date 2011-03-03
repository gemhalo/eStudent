class Department < ActiveRecord::Base
  belongs_to :college
  validates_presence_of :name
end
