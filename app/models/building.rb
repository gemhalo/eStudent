class Building < ActiveRecord::Base
  belongs_to :campus
  has_many :rooms
end
