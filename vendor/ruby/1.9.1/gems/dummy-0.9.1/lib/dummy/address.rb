module Dummy
  module Address
    extend self
    
    def zip_code
      ZIP_FORMATS.rand.numerify
    end

    def us_state
      STATE.rand
    end

    def us_state_short
      STATE_ABBR.rand
    end

    def city
      CITIES.rand
    end

    def street_name
      case rand(2)
      when 0 then "#{Name.last_name} #{street_suffix}"
      when 1 then "#{Name.first_name} #{street_suffix}"
      end
    end

    def street_address
      str = ("#" * rand(3)) << "### #{street_name}"

      str.numerify
    end

    def neighborhood
      NEIGHBORHOOD.rand
    end
    
    private
    
    def street_suffix
      STREET_SUFFIX.rand
    end

    ZIP_FORMATS = ["#####", "#####-####"]

    STATE = ["Alabama", "Alaska", "Arizona", "Arkansas",
      "California", "Colorado", "Connecticut", "Delaware", "Florida",
      "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas",
      "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts",
      "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana",
      "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York",
      "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon",
      "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota",
      "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington",
      "West Virginia", "Wisconsin", "Wyoming"]

    STATE_ABBR = %w(AL AK AS AZ AR CA CO CT DE DC FM FL GA GU HI ID IL IN IA
                     KS KY LA ME MH MD MA MI MN MS MO MT NE NV NH NJ NM NY NC
                     ND MP OH OK OR PW PA PR RI SC SD TN TX UT VT VI VA WA WV
                     WI WY AE AA AP)
    
    CITIES = ["New York", "Los Angeles", "Chicago", "Houston", "Phoenix", "Philadelphia",
      "San Antonio", "San Diego", "Dallas", "San Jose", "Detroit", "San Francisco",
      "Jacksonville", "Indianapolis", "Austin", "Columbus", "Fort Worth",
      "Charlotte", "Memphis", "Boston", "Baltimore", "El Paso", "Seattle", "Denver",
      "Nashville", "Milwaukee", "Washington", "Las Vegas", "Louisville", "Portland",
      "Oklahoma City", "Tucson", "Atlanta", "Albuquerque", "Kansas City", "Fresno",
      "Sacramento", "Long Beach", "Mesa", "Omaha", "Virginia Beach", "Miami",
      "Cleveland", "Oakland", "Raleigh", "Colorado Springs", "Tulsa", "Minneapolis",
      "Arlington", "Honolulu", "Wichita", "St. Louis", "New Orleans", "Tampa", "Santa Ana",
      "Anaheim", "Cincinnati", "Aurora", "Bakersfield", "Toledo", "Pittsburgh",
      "Riverside", "Lexington", "Stockton", "Corpus Christi", "Anchorage", "St. Paul", 
      "Newark", "Plano", "Buffalo", "Henderson", "Fort Wayne", "Chandler",
      "Greensboro", "Lincoln", "Glendale", "St. Petersburg", "Jersey City",
      "Scottsdale", "Orlando", "Madison", "Norfolk", "Birmingham", "Winston-Salem",
      "Durham", "Laredo", "Lubbock", "Baton Rouge", "North Las Vegas", "Chula Vista",
      "Chesapeake", "Garland", "Reno", "Hialeah", "Arlington", "Gilbert", "Irvine",
      "Rochester", "Akron", "Boise", "Irving", "Fremont", "Richmond", "Spokane",
      "Modesto", "Montgomery", "Yonkers", "Tacoma", "Shreveport", "Des Moines", "San Bernardino", 
      "Fayetteville", "Glendale", "Augusta", "Grand Rapids", "Huntington Beach",
      "Newport News", "Mobile", "Little Rock", "Moreno Valley", "Columbus",
      "Amarillo", "Fontana", "Oxnard", "Knoxville", "Fort Lauderdale", "Salt Lake City",
      "Worcester", "Huntsville", "Brownsville", "Jackson", "Overland Park",
      "Tempe", "Aurora", "Oceanside", "Tallahassee", "Providence", "Rancho Cucamonga",
      "Ontario", "Chattanooga", "Santa Clarita", "Garden Grove",
      "Vancouver", "Grand Prairie", "Peoria", "Sioux Falls", "Springfield", "Santa Rosa",
      "Rockford", "Salem", "Springfield", "Port St. Lucie", "Cape Coral",
      "Dayton", "Eugene", "Pomona", "Corona", "Alexandria", "Joliet", "Pembroke Pines",
      "Paterson", "Pasadena", "Lancaster", "Hayward", "Salinas", "Hampton",
      "Palmdale", "Pasadena", "Naperville", "Kansas City", "Hollywood", "Lakewood",
      "Torrance", "Escondido", "Fort Collins", "Syracuse", "Bridgeport", "Orange",
      "Cary", "Elk Grove", "Savannah", "Sunnyvale", "Warren", "Mesquite",
      "Fullerton", "McAllen", "Columbia", "Carrollton", "Cedar Rapids", "McKinney",
      "Sterling Heights", "Bellevue", "Coral Springs", "Waco", "Elizabeth", "West Valley City",
      "Clarksville", "Topeka", "Hartford", "Thousand Oaks", "New Haven", 
      "Denton", "Concord", "Visalia", "Olathe", "El Monte", "Independence",
      "Stamford", "Simi Valley", "Provo", "Killeen", "Springfield", "Abilene",
      "Thornton", "Gainesville", "Evansville", "Roseville", "Charleston", "Peoria",
      "Athens", "Lafayette", "Vallejo", "Lansing", "Ann Arbor", "Inglewood", "Santa Clara",
      "Flint", "Victorville", "Costa Mesa", "Beaumont", "Manchester", "Miami Gardens",
      "Miramar", "Norman", "Westminster", "Cambridge", "Midland", "Arvada",
      "Allentown", "Elgin", "Waterbury", "Downey", "Clearwater", "Billings", "West Covina",
      "Round Rock", "Murfreesboro", "Lewisville", "West Jordan", "Pueblo",
      "San Buenaventura", "Lowell", "South Bend", "Fairfield", "Erie", "Rochester",
      "High Point", "Richardson", "Richmond", "Burbank", "Berkeley", "Pompano Beach",
      "Norwalk", "Frisco", "Columbia", "Gresham", "Daly City", "Green Bay",
      "Wilmington", "Wichita Falls", "Davenport", "Antioch", "Palm Bay",
      "Centennial", "Odessa", "Boulder"]

    STREET_SUFFIX = %w(Alley Avenue Branch Bridge Brook Brooks
      Burg Burgs Bypass Camp Canyon Cape Causeway Center Centers Circle Circles
      Cliff Cliffs Club Common Corner Corners Course Court Courts Cove Coves
      Creek Crescent Crest Crossing Crossroad Curve Dale Dam Divide Drive Drives
      Estate Estates Expressway Extension Extensions Fall Falls Ferry
      Field Fields Flat Flats Ford Fords Forest Forge Forges Fork Forks Fort
      Freeway Garden Gardens Gateway Glen Glens Green Greens Grove Groves Harbor
      Harbors Haven Heights Highway Hill Hills Hollow Inlet Island
      Islands Isle Junction Junctions Key Keys Knoll Knolls Lake
      Lakes Land Landing Lane Light Lights Loaf Lock Locks Lodge Loop
      Mall Manor Manors Meadow Meadows Mews Mill Mills Mission Motorway
      Mount Mountain Mountains Neck Orchard Oval Overpass Park
      Parks Parkway Parkways Pass Passage Path Pike Pine Pines Place Plain Plains
      Plaza Point Points Port Ports Prairie
      Radial Ramp Ranch Rapid Rapids Rest Ridge Ridges River Road Roads
      Route Row Rue Run Shoal Shoals Shore Shores Skyway Spring Springs
      Spur Spurs Square Squares Station Stravenue
      Stream Street Streets Summit Terrace
      Throughway Trace Track Trafficway Trail Tunnel
      Turnpike Underpass Union Unions Valley Valleys Via Viaduct View Views
      Village Villages Ville Vista Walk Walks Wall Way Ways Well Wells)

    NEIGHBORHOOD = ["East of Telegraph Road", "North Norridge", "Northwest Midlothian/Midlothian Country Club",
      "Mott Haven/Port Morris", "Kingsbridge Heights", "Bronxdale", "Pennypack", "Bridesburg",
      "Allegheny West", "Bushwick South", "Dyker Heights", "Ocean Parkway South", "Summerlin North",
      "Seven Hills Area", "Greater Las Vegas National", "Phoenix", "Central Chandler", "South of Bell Road",
      "River Heights", "White Plains Central", "Mount Kisco West", "Pound Ridge East", "Babylon Bayside",
      "Sagaponack Seaside", "South of Lake Ave", "Far Rockaway/Bayswater", "Jamaica Estates/Holliswood",
      "Murray Hill", "East Renton", "Renton West", "Auburn North", "Northwoods West", "Florissant West",
      "Ladue South", "Candlewood Country Club", "West Covina East", "North East Irwindale", "Sunshine-Gardens",
      "Cipriani", "Brentwood Central", "Jupiter South/Abacoa", "Sea Ranch Lakes", "Schall Circle/Lakeside Green",
      "Olmsted Falls Central", "South of Lake Shore Blvd", "Gates Mills North", "White Oak South of Columbia Pike",
      "Rockville East of Hungerford Dr", "Cleveland Park"]
  end
end
