checkins = Hash.new(0)

File.readlines('checkins.txt').each do |line|
  checkins[line.to_i] += 1
end


(1..10000).each do |n|
  val = checkins[n]
  puts "#{n}: #{val}" if val != 1
end

puts "Total: #{checkins.count}"
