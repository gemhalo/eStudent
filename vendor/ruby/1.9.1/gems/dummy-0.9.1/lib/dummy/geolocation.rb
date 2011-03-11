module Dummy
  module Geolocation
    extend self
  
    def lat
      (rand(1.8e11)-9e10)/1e9 # precision 9
    end

    def lng
      (rand(3.6e11)-1.8e11)/1e9 # precision 9
    end
  end
end
