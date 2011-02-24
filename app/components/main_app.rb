class MainApp < Netzke::Basepack::SimpleApp

  # Initial layout of the app.
  # <tt>status_bar_config</tt>, <tt>menu_bar_config</tt>, and <tt>main_panel_config</tt> are defined in SimpleApp.
  def configuration
    sup = super
    sup.merge(
      :items =>[
         { #North panel
          :region => :north,
          :border => false,
          :height => 65,
          :html => %Q{
          <div style="widt:65px;float:left;border:1px solid;"><img src="images/mu_icon_64.png"/></div>
          <div style="height:65px;float:left;border:1px solid;">
          <h1 style="font-size:large;float:left">
           Mekelle University
          </h1>
          </div>
          <div style="margin:10px; color:#333; text-align:center; font-family: Helvetica;">
            <a style="color:#B32D15; text-decoration: none;" href="http://gemhalo.org">Gemhalo! eStudent</a> Demo
          </div>
          },
          :bodyStyle => {:background => %Q(#FFF url("/images/header-deco.gif") top left repeat-x)}
        },
        { #Center panel
          :region => :center,
          :layout => :border,
          :border => false,
          :items => [ status_bar_config,main_panel_config(:ref => "../../mainPanel"),
            { #Navigation panel
              :region => :west,
              :width => 250,
              :split => true,
              :xtype => :treepanel,
              :collapsible => true,
              :title => "Navigation",
              :root_visible => false,
              :ref => "../../navigation",
              :root => {
                :text => "Navigation",
                :expanded => true
              }
            },
            { #Navigation panel
              :region => :east,
              :collapsible => true,
              :width => 200,
              :split => true,
              :xtype => :treepanel,
              :collapsible => true,
              :title => "Navigation",
              :root_visible => false,
              :ref => "../../navigation",
              :root => {
                :text => "Navigation",
                :expanded => true
              }
            }
          ]# End of center.items
        }

      ] # end of :items
    )#End of sup.merge
  end
end

