class Program < ActiveRecord::Base

#has_many :curriculum
has_many :course, :through => :curriculum

validates :program_id_number , :presence =>true
validates :program_name , :presence =>true
validates :level , :presence =>true
validates :enrollment_type , :presence =>true
validates :mode , :presence =>true
validates :award_type , :presence =>true
validates :duration , :presence =>true
validates :total_credit_hour , :presence =>true


end
