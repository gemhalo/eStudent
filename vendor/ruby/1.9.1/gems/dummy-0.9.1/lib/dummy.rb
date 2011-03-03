require "rubygems"
require "dummy/core_ext"
require "dummy/address"
require "dummy/company"
require "dummy/internet"
require "dummy/lorem"
require "dummy/name"
require "dummy/phone_number"
require "dummy/geolocation"

module Dummy
  class << self
      
    def magic_data(field, type)
      case type
      when :string, :text then magic_string(field, type)
      when :integer then magic_integer(field)
      when :date, :datetime then magic_date(field)
      when :decimal, :float then magic_float(field)
      when :boolean then rand(2)
      else false
      end
    end
    
    private
    
    def magic_string(field, type = :string)
      case field
      when /neighbou?rhood|neighbou?rship|district|vicinity/ then
        Dummy::Address.neighborhood
      when /phone/ then
        case field
        when /short|abbreviation|abbr|small/ then
          Dummy::PhoneNumber.phone_number_short
        else
          Dummy::PhoneNumber.phone_number
        end
      when /state/ then
        case field
        when /short|abbreviation|abbr|small/ then
          Dummy::Address.us_state_short
        else
          Dummy::Address.us_state
        end
      when /zip|postal/ then
        Dummy::Address.zip_code
      when /city|town/ then
        Dummy::Address.city
      when /mail/ then
        Dummy::Internet.email
      when /password|pass|pwd/ then
        Dummy::Internet.password
      when /url|uri|href|link|page|site/ then
        Dummy::Internet.url
      when /address|residence|residency/ then
        Dummy::Address.street_address
      when /road|street/ then
        Dummy::Address.street_name
      when /user|usr|login/ then
        Dummy::Internet.username
      when /name/ then
        case field
        when /company|enterprise|business|firm|school|college/ then
          Dummy::Company.name
        when /first|initial|primary/ then
          Dummy::Name.first_name
        when /last|latter|family|sur/ then
          Dummy::Name.last_name
        else
          Dummy::Name.name
        end
      when /company|enterprise|business|firm|school|college/ then
        case field
        when /motto|description|slogan|lemma|punch|line/ then
          case rand(2)
          when 0 then Dummy::Company.catch_phrase
          when 1 then Dummy::Company.bs
          end
        else
          Dummy::Company.name
        end
      when /^(.*[-_:+ ])*lat/ then
        Dummy::Geolocation.lat.to_s
      when /^(.*[-_:+ ])*(lon|lng)/ then
        Dummy::Geolocation.lng.to_s
      else
        case type
        when :string then
          case rand(2)
          when 0 then Dummy::Lorem.sentence
          when 1 then Dummy::Lorem.sentences
          end
        when :text then
          case rand(2)
          when 0 then Dummy::Lorem.paragraph
          when 1 then Dummy::Lorem.paragraphs
          end
        end
      end 
    end
    
    def magic_integer(field)
      case field
      when /phone/
        p = Dummy::PhoneNumber.phone_number_short.gsub("-", "")
        (p = p.to_i + 1000000000) if p[0] == "0"
        p.to_i
      when /zip|postal/
        z = Dummy::Address.zip_code
        (z = z.to_i + 10000) if z[0] == "0"
        z.to_i
      when /street|road|address|residence|residency/
        (("#" * rand(3)) << "###").numerify.to_i
      else
        rand(1000)
      end
    end
    
    def magic_date(field)
      difference = case field
      when /_on$/
        rand(365*2)
      when /birth/
        365 + rand(365 * 50)
      else
        0
      end
      (Date.today - difference).to_s
    end
    
    def magic_float(field)
      case field
      when /^(.*[-_:+ ])*lat/ then
        Dummy::Geolocation.lat
      when /^(.*[-_:+ ])*(lon|lng)/ then
        Dummy::Geolocation.lng
      else 
        (("#" * rand(4)) << "#.#" << ("#" * rand(8))).numerify.to_f
      end
    end
  end
end
