class CreateAcademicCalendars < ActiveRecord::Migration
  def self.up
    create_table :academic_calendars do |t|
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end

  def self.down
    drop_table :academic_calendars
  end
end
