class BossesAndClerks < Netzke::Basepack::BorderLayoutPanel
#  js_property :header, false

 def configuration
    super.merge({
      :model => "Applicant",

      # Declaring columns
#      :columns => [
 #       :name=> :person__first_name,
  #      :name=> :person__last_name,
   #     :verified,
    #  ]
    })
  end

end
