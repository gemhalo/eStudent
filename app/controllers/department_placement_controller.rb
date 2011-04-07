class DepartmentPlacementController < ApplicationController

def department_placing_process
  
  # Disabled students are given priority

  @undergraduate_regular_applicants=Applicant.undergraduate_regular_applicants

  @disabled_applicants=Applicant.all(:include=>[:person, :educational_backgrounds ], :conditions=> 
      ["people.disability=?",true],
      :order=> ("educational_backgrounds.result desc"))
	for ds in @disabled_applicants
			@depts=ds.department_choices.order("preference")
			ds.student.department_id=@depts.first.department_id
			ds.student.save!
	end

    #Females are placed according to the given percentage
    
		@female_applicants=Applicant.all(:include=>		[:person, :educational_backgrounds], :conditions=>
		["people.gender='F' and people.disability=?",false], :order=>("educational_backgrounds.result desc"))
		for fs in @female_applicants
			@depts=fs.department_choices.order("preference")
			for d in @depts
				if Student.where("department_id=?",d.department_id).count <
					Department.find(d.department_id).department_quota.femaleno
					fs.student.department_id=d.department_id
					fs.student.save!
					break

				end
			end
		end

    #Finally Males are placed to the remaining space

		@male_applicants=Applicant.all(:include=>[:person, :educational_backgrounds], :conditions=>
        ["people.gender='M' and people.disability=?",false], :order => ("educational_backgrounds.result desc"))
		for ms in @male_applicants
			@depts=ms.department_choices.order("preference")
			for d in @depts
				if Student.where("department_id=?",d.department_id).count <
					Department.find(d.department_id).department_quota.total_quota
					ms.student.department_id=d.department_id
					ms.student.save!
					break
				end
			end
		end
		@students=Student.all
    render :action=>"show_placement"
end

def show_placement
end

end

