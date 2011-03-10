require "digest/md5"

module Dummy
  module Internet
    extend self
  
    def email
      "#{username}@#{HOSTS.rand}"
    end

    def username
      case rand(2)
      when 0
        Name.first_name.gsub(/\W/, "").downcase
      when 1
        parts = [ Name.first_name, Name.last_name ].each {|n| n.gsub!(/\W/, "") }
        parts = parts.join %w(. _)[Kernel.rand(2)].dup
        parts.downcase!
        parts
      end
    end
    
    def password
      Digest::MD5.hexdigest(Dummy::Lorem.sentence)
    end
    
    def url
      name = ""
      protocol = "http"
      
      case rand(5)
      when 0, 1 then name = Name.first_name.gsub(/\W/, "").downcase
      when 2, 3 then name = Name.last_name.gsub(/\W/, "").downcase
      when 4 then name = "#{Name.first_name.gsub(/\W/, '').downcase}.#{Name.last_name.gsub(/\W/, '').downcase}"
      end
      
      case rand(10)
      when 0 then protocol = "https"
      when 1 then protocol = "ftp"
      end
      
      "#{protocol}://#{name}.#{DOMAINS.rand}"
    end
      
    private

    HOSTS = %w(gmail.com yahoo.com hotmail.com)
    DOMAINS = %w(com us co.uk info net name biz)
  end
end
