require 'active_support/inflector'

module Netzke
  module Generators
    class BlpWidgetGenerator < Rails::Generators::NamedBase
      source_root File.expand_path('../templates', __FILE__)   
  
      argument :data_class, :type => :string, :required => true, :desc => 'Name of the data class to use in the grid'

      def create_lib_netzke
        inside 'lib' do      
          FileUtils.mkdir('netzke') if !File.directory?('netzke')
        end
      end     
  
      def create_widget
        template 'blp_widget.erb', "lib/netzke/blp/#{name}_widget.rb"
      end   
  
      protected

      def class_name
        name.camelize
      end
    end
  end
end