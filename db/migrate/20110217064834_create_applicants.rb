class CreateApplicants < ActiveRecord::Migration
 def self.up
   create_table :applicants do |t|
     t.integer :person_id
     t.integer :admission_id
     t.integer :college_id
     t.string :entry_level
     t.string :major_field_of_study
     t.string :minor_field_of_study
     t.string :academic_year
     t.boolean :admission_status

     t.timestamps
   end
 end

 def self.down
   drop_table :applicants
 end
end
 
