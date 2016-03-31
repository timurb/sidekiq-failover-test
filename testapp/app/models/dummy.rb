class Dummy < ActiveRecord::Base
  def value
    puts(Rails.cache.write('tmp', rand(1000)))
    if Rails.cache.exist?('dummy')
      Rails.cache.read('dummy')
    else
      res = rand(1000)
      puts(Rails.cache.write('dummy', res))
      res
    end
  end
end
