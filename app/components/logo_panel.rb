class LogoPanel < Netzke::Basepack::Panel
  def configuration
    super.merge(
      :border => false,
      :header => false,
      :view_config => {
        :titleCollapse => true,
        :animate => true,
        :activeOnTop => true,
        :fill => true
      },
      :items => [
        {
          :border => false,
          :header => false,
          :region => :west,
          :class_name => "Netzke::Basepack::Panel",
          :split => true,
          :width =>  65,
          :height => 65,
          :bodyStyle => {:background => %Q(#FFF url("/images/mu_icon_64.png") center center no-repeat)}
        },{
          :region => :south,
          :border => false,
          :header => false,
          :class_name => "Netzke::Basepack::Panel",
          :view_config => {
              :force_fit => true,
            :fill => true
          },
          :height => 65
        }
      ]
    )
  end
end

