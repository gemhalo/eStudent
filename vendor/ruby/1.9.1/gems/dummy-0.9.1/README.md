# Dummy

Dummy generates dummy data in a clever way.

## Description

Dummy can generate a lot of dummy data from company names to postal codes. While it allows you to specifically request a type of information, it can also try to determine what you're looking for given a couple of parameters.

## Installation

$ gem install dummy

## Usage

To ask for cleverly generated dummy data:
    Dummy.magic_data(field, type)
    
Example:
    require "dummy"
    
    Dummy.magic_data("mail", :string) => "nyasia@hotmail.com"
    Dummy.magic_data("company_motto", :string) => "engineer intuitive functionalities"
    Dummy.magic_data("state", :string) => "Louisiana"
    Dummy.magic_data("lat", :float) => -86.718683637
    Dummy.magic_data("phone", :integer) => 9462876293
    
You can also use its submodules for specific data:
    Dummy::Name.first_name => "Muhammad"
    Dummy::Internet.url => "https://david.grady.biz" 
    Dummy::Address.street_address => "10273 Delaney Extensions"
    
Have a look in the rdoc for all available generators.

## More information

### Caveats

Dummy has a few caveats which are on the TODO list. Those are:

*   It is an English speaking gem. It will not be smart at all if your column is named _telefone_ (Portuguese for _phone_) or if you want a zip code from outside the US.

Copyright (c) 2010 Gonçalo Silva
