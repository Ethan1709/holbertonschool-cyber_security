#!/usr/bin/ruby

require 'net/http'
require 'uri'

def get_request(url)
  uri = URI(url)

  begin
    res = res = Net::HTTP.get_response(uri)
    puts "Response status: #{res.code} OK"
    puts 'Response body:'
    puts res.body
  rescue StandardError => e
    puts "Response status: 404 Not Found"
    puts 'Response body:'
    puts "{}"
  end
end
