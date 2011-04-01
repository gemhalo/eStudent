class MainApp < Netzke::Basepack::SimpleApp

  def configuration
    super.merge(
      :items =>[
        {
          :region => :north,
          :border => false,
          :header => false,
          :title => "North",
          :height => 35,
          :html => %Q{
          <div style="margin:10px; color:#333; text-align:center; font-family: Helvetica;">
            <a style="color:#FFFFFF; text-decoration: none" href="http://demo.gemhalo.org">Gemhalo!</a> Demo
          </div>
        },
        :bodyStyle => {:background => %Q(#456 url("/images/header-deco.gif") top left repeat-x)}

        },{
          :region => :center,
          :header => false,
          :layout => :border,
          :items =>[
            menu_bar_config, main_panel_config(:ref => "../../mainPanel"),
            { #Navigation
              :region => :west,
              :header => true,
              :title => "Navigation",
              :width => 220,
              :split => true,
              :component => :menu_panel
            },{
              :region => :center,
              :header => false,
              :title => "Main panel",
              :split => true,
              :items => [
                { #Breadcrumbs
                  :region => :north,
                  :header => false,
                  :border => false,
                  :title => "Breadcrumbs",
                  :height => 20
                },{
                  :region => :center,
                  :header => false,
                  :title => "Content"

                }

              ]
            },{
              :region => :east,
              :title => "Notification",
              :width => 180,
              :split => true,
              :collapsible => true,
              :collapsed => true
            },
            status_bar_config
          ]
        }
      ]
    )
  end

  #components
  component :logo_panel

  component :menu_panel

  #Data grids
    component :custom_action_grid, :model => "Campus"
    component :applicants, :class_name => "Basepack::GridPanel", :model => "Applicant", :lazy_loading => true, :title => "List of Applicants"
end

