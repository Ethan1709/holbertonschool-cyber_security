#!/usr/bin/ruby


require 'net/http'
require 'uri'
def post_request(url, body_params)
  uri = URI(url)
  res = Net::HTTP.post_form(uri, body_params)
  puts "Response status: #{res.code} Created"
  puts 'Response body:'
  puts res.body
end
