require 'myworker'

delay = 0

(1..10000).each do |n|
  puts "Processing #{n}"
  begin
    MyWorker.perform_async(n, delay)
  rescue => e
    $stdout.write("#{e}\n")
  end
end
