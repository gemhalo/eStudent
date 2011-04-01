# Extend GridPanel to be specific about the model and columns we want to display
class ApplicantGrid < Netzke::Basepack::GridPanel
  # Include CSS for displaying the light bulb (see the source code)
  css_include :main

  def configuration
   super.merge({
     :model => "Applicant"

      # Declaring columns
#     :columns => [
 #        :person__name,
  #       :person__father_name,
   #      :person__grand_father_name,
    #     :name => :verified
    #  ]
    })
  end
end
