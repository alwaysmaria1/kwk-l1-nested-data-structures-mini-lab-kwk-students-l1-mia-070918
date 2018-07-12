# example ingredients array
ingredients = [
    ["rye", "sourdough", "baguette"],
    ["ham", "salami", "turkey"],
    ["swiss", "munster", "cheddar"],
    ["mayo", "mustard", "tabasco"]
]

def sandwich_request(ingredients, order) 
  order.each do |x|
    found = ingredients.find do |arr|
      arr.find do |y| 
        x == y
      end
    end
    if !found
      return false
    end
    return true
  end
      
    
  
  
  
  
  # ingredients.each do |x|
  #   counter=0
  #   x.each do |y|
  #     if y==order[counter]
  #       puts "true"
  #     else 
  #       puts "false"
  #     end
  #   end
  # end
end 

puts sandwich_request(ingredients,["rye","tofu","cheddar"])
      
      
    
  

 
# example city_info hash
cities = {
  :new_york => { 
    :mayor => "Bill DeBlasio",
    :population => 8337000,
    :website => "http://www.nyc.gov"
  },
  :los_angeles => { 
    :mayor => "Eric Garcetti",
    :population => 3884307,
    :website => "http://www.lacity.org"
  },
  :miami => { 
    :mayor => "Tomás Regalado",
    :population => 419777,
    :website => "http://www.miamigov.com"
  },
  :chicago => { 
    :mayor => "Rahm Emanuel",
    :population => 2695598,
    :website => "http://www.cityofchicago.org/"
  }
}

def city_populations(cities)
  cities.sum { |city| city[:population] }
end
puts city_populations(cities)
