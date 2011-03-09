class DepartmentPlacementController < ApplicationController


def department_placing_process
  @disabled_students=Student.all(:include=>[:person, :educational_background], :conditions=> ["people.handicapped !='None'"], :order=> ("educational_backgrounds.prep_result desc"))
	for ds in @disabled_students
			@depts=ds.admission.department_choices.order("preference")
			ds.department_id=@depts.first.department_id
			ds.save!
	end

		@female_students=Student.all(:include=>		[:person, :educational_background], :conditions=>
		["people.sex='Female' and people.handicapped = 'None'"], :order=> 		("educational_backgrounds.prep_result desc"))
		for fs in @female_students
			@depts=fs.admission.department_choices.order("preference")
			for d in @depts
				if Student.where("department_id=?",d.department_id).count <
					Department.find(d.department_id).department_quota.femaleno
					fs.department_id=d.department_id
					fs.save!
					break

				end
			end
		end

		@male_students=Student.all(:include=>[:person, :educational_background], :conditions=>
        ["people.sex='Male' and people.handicapped='None'"], :order => ("educational_backgrounds.prep_result desc"))
		for ms in @male_students
			@depts=ms.admission.department_choices.order("preference")
			for d in @depts
				if Student.where("department_id=?",d.department_id).count <
					Department.find(d.department_id).department_quota.total_quota
					ms.department_id=d.department_id
					ms.save!
					break
				end
			end
		end
		@students=Student.all(:include=> [:educational_background], :order=>("educational_backgrounds.prep_result desc"))
    render :action=>"show_placement"
end

def show_placement

end

    
end
