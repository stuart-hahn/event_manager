puts 'Event Manager Initialized'

# if File.exist?("event_attendees.csv")
#   contents = File.read('event_attendees.csv')
# end

lines = File.readlines('event_attendees.csv')
lines.each_with_index do |line, index| 
  next if index == 0
  columns = line.split(',')
  first_name = columns[2]
  p first_name
end