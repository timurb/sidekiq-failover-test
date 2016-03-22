checkins = []

File.readlines('checkins.txt').each do |line|
  checkins[line.to_i] = true
end

checkins.each_with_index do |val, index|
  puts val if !index
end

puts 'All done'
