
dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}
 
# Get city names from the hash
def get_city_names(somehash)
  return somehash.keys
end
 
# Get area code based on given hash and key
def get_area_code(somehash, key)
  return somehash[key]
end


loop do
  puts "Do you want to lookup an area code from city name?(Y/Press any other key to exit)"
  input = gets.chomp.downcase
  break if input != "y"
  cities = get_city_names(dial_book)
  puts "Enter the city for which you want to look for area code"
  puts cities
  puts "Enter your selection"
  selected_city = gets.chomp
  area_code = get_area_code(dial_book, selected_city)
  puts " the area code for #{selected_city} is #{area_code}"
end