#!/usr/bin/ruby

def count_user_ids(path)
  require 'json'

  file_content = File.read(path)
  data = JSON.parse(file_content)

  array = []
  data.each do |key, value|
    array.append(key['userId'])
  end
  array = array.uniq.map{|t| [t,array.count(t)]}.to_h

  for i in array do
    puts "#{i[0]}: #{i[1]}"
  end
end

path = 'file.json'
