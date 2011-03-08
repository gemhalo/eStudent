require 'active_support/inflector'

module Netzke
  module Generators
    class GridPanelWidgetGenerator < Rails::Generators::NamedBase
      source_root File.expand_path('../templates', __FILE__)

      def create_lib_netzke
        inside 'lib' do      
          FileUtils.mkdir('netzke') if !File.directory?('netzke')
        end
      end     
  
      def create_widget
        template 'grid_panel_widget.erb', "lib/netzke/grid_panel/#{name}_widget.rb"
      end   
  
      protected

      def class_name
        name.camelize
      end  
    end
  end
end