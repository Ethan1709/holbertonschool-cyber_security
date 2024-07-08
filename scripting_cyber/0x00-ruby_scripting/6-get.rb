#!/usr/bin/ruby

require 'net/http'
require 'uri'

def get_request(url)
  uri = URI(url)
  res = res = Net::HTTP.get_response(uri)
  puts res.code
  puts res.body
end

url = 'https://jsonplaceholder.typicode.com/posts/1'
