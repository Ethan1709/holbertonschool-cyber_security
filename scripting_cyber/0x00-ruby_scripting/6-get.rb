#!/usr/bin/ruby

require 'net/http'
require 'uri'

def get_request(url)
  uri = URI(url)
  res = res = Net::HTTP.get_response(uri)
  if res.code != '200'
    then puts "Response status: #{res.code} Not found"
    else
      puts "Response status: #{res.code} OK"
      puts 'Response body:'
      puts res.body
  end
end
