class MenuPanel < Netzke::Basepack::AccordionPanel

  def configuration
    super.merge(
      :items =>[
        {
          :title => "O"
        },{
        :class_name => "Panel",
        :update_text => "Update for Panel Two",
        :title => "Panel Two",
        :lazy_loading => true
      }

      ]
    )
  end


end

