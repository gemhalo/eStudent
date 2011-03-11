module Dummy
  module Generators
    # Methods used by other dummy-related gems are grouped here
    # Other generators will just "include Dummy::Generators::Common"
    module Common
      def gather_associations
        @models.each_key do |model|
          model_symbol = model.to_s.underscore.pluralize.to_sym
          associations = model.reflect_on_all_associations(:belongs_to)
          
          associations.each do |assoc|
            assoc_name = assoc.name.to_s.camelcase
            assoc_options = assoc.options

            if assoc_options.empty?
              @models[model][:associations].push({
                :model  => assoc_name.constantize,
                :foreign_key => "#{assoc_name.underscore}_id"
              })
            elsif assoc_options.has_key?(:class_name) and assoc_options.has_key?(:foreign_key)
              @models[model][:associations].push({
                :model => assoc_options[:class_name].constantize, # TODO: handle class_name
                :foreign_key => assoc_options[:foreign_key]
              })
            else
              next
            end

            assoc_model = @models[model][:associations].last[:model]
            assoc_reflections = assoc_model.reflect_on_all_associations(:has_one)
            @models[model][:associations].pop if assoc_reflections.map(&:name).include?(model_symbol)
          end
        end
      end
      
      def generate_record_data(name, info, column, fixtures=true)
        column_name = String.new(column.name) # this shouldn't be needed, ruby bug?
        if(column_name =~ /_at$/ and column.type == :datetime) or column_name == "id"
          return
        end

        associated_model = associated_class_name(info, column_name)

        if associated_model
          if fixtures
            val = generate_association_data(associated_model)
            column_name.gsub!(/_id$/, "")
          else
            val = Fixtures.identify(generate_association_data(associated_model))
          end
        else
	        val = generate_regular_data(column)
        end

        {column_name => val}
      end
      
      def associated_class_name(info, name)
        info[:associations].each do |assoc|
          return assoc[:model] if assoc[:foreign_key] == name
        end
        false
      end
      
      def generate_association_data(associated_model)
        random_record_num = rand(@models[associated_model][:record_amount])
        "#{associated_model.to_s.underscore}_#{random_record_num}"
      end

      def generate_regular_data(column)
        val = Dummy.magic_data(column.name, column.type)
        
        if val
          val
        else
          say_status :failed, "data generation for '#{column.name}' with type '#{column.type.to_s.downcase}'", :red
          ""
        end
      end
    end
  end
end
