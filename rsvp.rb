require './scan'
food = File.read('foods.csv')

print "Enter your name: "
name = scan
print "Enter your email address: "
email = scan
print "Enter number of additional guests: "
extras = scan
puts "What food will you bring? Here is the list of required items:\n #{food}"
print "> "
bring = scan
bring.downcase!

while !food.include?(bring)
  print "We don't need that. Enter a food from the list: "
  bring = scan
  bring.downcase!
end


food.split(/\n/).delete(bring)
new_food = food
File.open('foods.csv', 'w') do |f|
  f.puts(new_food)
end

print "Thanks! We'll see you there!"
