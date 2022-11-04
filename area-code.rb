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

# Get city name from the hash
def get_city_names(somehash)
  # write code here
  #somehash.each {|key, value| puts key}
  somehash.keys
end

def get_are_code(somehash,key)
  # write code here
  #somehash.each do |k, v|
  #  puts "Area code for #{k} is #{v}." if key == k 
  #end
  somehash[key]
end

# Execution flow
loop do
  # write code here
  puts "Do you want to lookup an area code based on a city name? (Y/N)"
  answer = gets.chomp.downcase
  break if answer != 'y'
  puts "Which city do you want the area code for?"
  puts get_city_names(dial_book)
  puts "Enter your selection"
  selection = gets.chomp.downcase
  if dial_book.include?(selection)
    puts "The area code for #{selection} is #{get_are_code(dial_book, selection)}"
  else
    puts "You entered an invalid city name"
  end 
end 