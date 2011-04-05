class AvailableProgramsController < ApplicationController
def index
   @admission = AdmissionType.all
   @enrollment =EnrollmentType.all
   @admission = Admission.all
   
   respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @campuses }
      format.pdf {
        html = render_to_string(:layout => false , :action => "index.html.erb")
        kit = PDFKit.new(html)
        kit.stylesheets << "#{Rails.root}/public/stylesheets/screen.css"
        send_data(kit.to_pdf, :filename => "available_programs.pdf", :type => 'application/pdf')
        return # to avoid double render page.call function, param1, param2
      }
    end
   
   
end


def show
	
	
	@programs = Program.where('admission_id = ?', params[:id])
   


end
def index_pdf
render :pdf => "my_pdf",:layout => false,:template => '/available_programs/index_pdf',:footer => {:center => "Center", :left => "Left", :right => "Right"}
end
end

