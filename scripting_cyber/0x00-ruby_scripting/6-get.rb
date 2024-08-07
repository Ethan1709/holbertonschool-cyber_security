#!/usr/bin/ruby

require 'net/http'
require 'uri'

def get_request(url)
  uri = URI(url)
  res = res = Net::HTTP.get_response(uri)
  if res.code != '200'
    then puts "Response status: #{res.code} Not Found"
    else puts "Response status: #{res.code} OK"
  end
  puts 'Response body:'
  puts res.body
end
