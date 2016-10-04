require './scan'
food = open("./foods.csv")


print "Enter your name: "
name = scan
print "Enter your email address: "
email = scan
print "Enter number of additional guests: "
extras = scan
puts "What food will you bring? Here is the list of required items: #{food}"
print "> "
bring = scan

while food.downcase.include?(bring) == false
  print "We don't need that. Enter a food from the list: "
  food = scan
end

stuff = food.each_line
stuff.delete(bring)

print "Thanks! We'll see you there!"
