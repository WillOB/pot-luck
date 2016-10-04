require './scan'
people = File.open("./people.csv")


def numGuests(list)
  guests = 0
  list.each_line do |line|
    info = line.split(',')
    guests += info[2].to_i + 1
  end
  return guests
end

puts "There will be #{numGuests(people)} people at the party."
