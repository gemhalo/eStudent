class Instructor < ActiveRecord::Base
	belongs_to :person
        #accepts_nested_attributes_for :person
       attr_accessor :name, :father_name
       after_initialize :init_person
       before_save :save_person

       def init_person
         self.person = Person.new if self.person_id.nil?
       end

       def save_person 
          self.person.save
       end

     def person_attributes=(person_attributes)
        person_attributes.each do |attributes|
           person.build(attributes)
        end
     end
end
