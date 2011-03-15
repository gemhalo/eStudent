require 'active_support/inflector'

module Netzke
  module Generators
    class TreeWidgetGenerator < Rails::Generators::NamedBase
      source_root File.expand_path('../templates', __FILE__)   
  
      class_option :root_node, :type => :string, :default => 'Root', :desc => 'Name of the root node'

      def create_lib_netzke
        inside 'lib' do      
          FileUtils.mkdir('netzke') if !File.directory?('netzke')
        end
      end     
  
      def create_widget
        template 'tree_widget.erb', "lib/netzke/tree/#{name}_widget.rb"
      end   
  
      protected

      def class_name
        name.camelize
      end
  
      def root_node
        options[:root_node]
      end
    end
  end
end