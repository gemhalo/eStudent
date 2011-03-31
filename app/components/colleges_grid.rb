class CollegesGrid < Netzke::Basepack::GridPanel
  def configuration
    super.merge({
      :model => "College",
      :class_name => "Basepack::GridPanel",
      :border => true,
      :view_config => {
        :force_fit => true
      },
      :columns  => [
        {:name => :name, :label => "College name"},
        {:name => :campus__name}
      ],

      #Create menu
      :bbar => nil,
      :tbar => [{
      :menu => [:add.action, :edit.action, :apply.action, :del.action],
      :text => "Edit inline",
      :icon =>"/images/icons/table.png"
      },{
      :menu => [:add_in_form.action, :edit_in_form.action],
      :text => "Edit in form",
      :icon => "/images/icons/application_form.png"
      }],
      :width => 600,
      :height => 300
   
    })
  end 
end
