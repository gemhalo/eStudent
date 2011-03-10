# Dummy data

"Dummy data" uses [dummy](http://github.com/goncalossilva/dummy) to generate clever data for your Rails 3 application; it also allows you to import it to the database.

## Description

Check [dummy's](http://github.com/goncalossilva/dummy) description for a better notion of what exactly is dummy data. This gem uses dummy to generate this data for your models and stores it in YAML files. It also provides a rake task for you to import it to the database.

## Installation

$ gem install dummy_data

## Usage

Add the following to the Gemfile of your Rails 3 application:
    gem "dummy_data"
    
Now you have access to the generator:
    rails generate dummy:data
    
You can change the base amount of records and the growth ratio (what these mean exactly is explained latter on):
    rails generate dummy:data --base-amount 5 --growth-ratio 1.5
    
Also, you can manually define the amount of records to generate for each model (or just accept the defaults):
    rails generate dummy:data --manual-amounts
    
And you can manually set the output folder for the dummy data (which defaults to test/dummy):
    rails generate dummy:data --output-folder test/awesome_dummy

The files will be placed under _output-folder_/data.
    
Feel free to mix all of these options.
    
The fixtures are stored in _test/dummy/data_ (by default) while a rake file is placed in _lib/tasks/dummy\_data.rake_. It allows you to import the generated data into the database:
    RAILS_ENV="dummy" rake dummy:data:import

Don't forget to change RAILS_ENV to whatever is appropriate for you (and is configured under databases.yml). Your database doesn't need to be empty.

## More information

### Smart data

"Dummy data" tells dummy to try to understand your database columns and generate data accordingly, instead of dumping "Lorem ipsum" all over the place.

For instance, if you have a field called _company\_name_, it will generate a company name. If you have a field called _awesome\_postal\_code_, it will generate a valid ZIP Code. If you have a field called _longitude_, it will generate a valid longitude, and so on. You get the picture.

Dummy cares about associations. It will create random associations between the automatically generated records, so you don't have to worry about that.

### Smart amounts of data

"Dummy data" is aware that the amount of records that each model has in real world applications is different. For this reason, it will analyze your model associations to try to make a somewhat accurate estimation of the expected amount of records.

To illustrate this, consider an application with models for _Child_, _Parent_ and _GrandParent_. If the base amount is 10, the growth ratio is 2.0, and the models look like the following:

    class GrandParent < ActiveRecord::Base  
      has_many :parents
    end
    
    class Parent < ActiveRecord::Base
      belongs_to :grand_parent
      has_many :children
    end
    
    class Child < ActiveRecord::Base
        belongs_to :parent
    end`

The generator will create dummy data for 10 _GrandParents_, 20 _Parents_ and 40 _Children_.

Copyright (c) 2010 Gonçalo Silva
