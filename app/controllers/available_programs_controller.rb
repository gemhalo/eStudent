class AvailableProgramsController < ApplicationController
layout "student"
def index
   @admissiont = AdmissionType.all
   @enrollmentt =EnrollmentType.all
   @admission = Admission.all
end

def show


	@programs = Program.where('admission_id = ?', params[:id])

end
end

