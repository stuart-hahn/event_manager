require 'csv'

puts 'Event Manager Initialized'

# if File.exist?("event_attendees.csv")
#   contents = File.read('event_attendees.csv')
# end

# lines = File.readlines('event_attendees.csv')
# lines.each_with_index do |line, index| 
#   next if index == 0
#   columns = line.split(',')
#   first_name = columns[2]
#   p first_name
# end

def clean_zipcode(zipcode)
  zipcode = zipcode.to_s.rjust(5, "0")[0..4]
end

contents = CSV.open('event_attendees.csv', headers: true, header_converters: :symbol)
contents.each do |row|
  name = row[:first_name]
  zipcode = clean_zipcode(row[:zipcode])

  puts "#{name} #{zipcode}"
end