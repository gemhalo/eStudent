class Program < ActiveRecord::Base
belongs_to :admission

#has_many :curriculum
has_many :course, :through => :curriculum
validates :duration , :presence =>true
validates :total_credit_hour , :presence =>true


end
