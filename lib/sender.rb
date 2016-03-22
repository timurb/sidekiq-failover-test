require 'myworker'

delay = 0

(1..10000).each do |n|
  puts "Processing #{n}"
  MyWorker.perform_async(n, delay)
end
