class Address < ActiveRecord::Base
include GeoKit::Geocoders
before_save :geolocate
validates_presence_of :street, :city, :state, :zip
def to_s
"#{street} #{city}, #{state} #{zip}"
end
protected
def geolocate
res = GoogleGeocoder.geocode(to_s)
self.latitude = res.lat
self.longitude = res.lng
end
end
