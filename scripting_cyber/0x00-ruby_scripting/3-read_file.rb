#!/usr/bin/ruby

require 'json'

file_content = File.read('file.json')

data = JSON.parse(file_content)

array = []
data.each do |key, value|
  array.append(key['userId'])
end
array = array.uniq.map{|t| [t,array.count(t)]}.to_h

for i in array do
  puts "#{i[0]}: #{i[1]}"
end
