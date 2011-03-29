class ApplicantGrid < Netzke::Basepack::GridPanel
  # Include CSS for displaying the light bulb (see the source code)
 # css_include :main

  def configuration
    super.merge({
      :model => "Applicant",

      # Declaring columns
      :columns => [
        :person__first_name,
        :person__last_name,
        :verified
      ]
    })
  end
end

