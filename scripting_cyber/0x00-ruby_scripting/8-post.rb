#!/usr/bin/ruby


require 'net/http'
require 'uri'
def post_request(url, body_params)
  uri = URI(url)
  res = Net::HTTP.post_form(uri, body_params)
  if res.code != '201'
    then puts "Response status: #{res.code} Not Found"
    else puts "Response status: #{res.code} Created"
  end
  puts 'Response body:'
  puts res.body
end
