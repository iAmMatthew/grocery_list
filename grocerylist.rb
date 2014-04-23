grocery_list = Hash.new

puts "What do you want to add to your grocery list?" 
item = gets.chomp
while item != "exit"
  if grocery_list.has_key?(item)
    grocery_list[item] += 1
  else 
    grocery_list[item] = 1
  end
  puts "Would you like to ask anything else? Type an item or exit." 
item = gets.chomp
end 
grocery_list.each do |item, number|
  puts "#{item}: #{number}"
end