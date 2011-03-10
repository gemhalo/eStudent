class Program < ActiveRecord::Base

#has_many :curriculum
has_many :course, :through => :curriculum

validates :duration , :presence =>true
validates :total_credit_hour , :presence =>true


end
