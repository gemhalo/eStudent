class CreateResearchAndTeachingExperiences < ActiveRecord::Migration
  def self.up
    create_table :research_and_teaching_experiences do |t|
      t.string :description
      t.integer :applicant_id

      t.timestamps
    end
  end

  def self.down
    drop_table :research_and_teaching_experiences
  end
end
