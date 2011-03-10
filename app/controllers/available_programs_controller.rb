class AvailableProgramsController < ApplicationController
def index
   @admissiont = AdmissionType.all
   @enrollmentt =EnrollmentType.all
	@admission = Admission.new	
end

def show
	@admission = Admission.find(params[:admission])
	logger.info("#--------------- {@admission.inspect}")	
	@programs = Program.where('admission_id = ?', Admission.where('admission_type_id = ?', params[:id]))

end
end
