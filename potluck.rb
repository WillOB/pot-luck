
people = File.open("./people.csv")

def numGuests(list)
  invited = list.each_line.count
  lines = list.each_line
  lines do |line|
    line.split(',')
    return line[2]
  end
end

puts numGuests(people)
