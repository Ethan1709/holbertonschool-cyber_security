#!/usr/bin/ruby

require 'net/http'
require 'uri'

def get_request(url)
  uri = URI(url)

  begin
    res = res = Net::HTTP.get_response(uri)
    if res.code != '200'
      then puts "Response status: #{res.code} Not found"
      else puts "Response status: #{res.code} OK"
    end
    puts 'Response body:'
    puts res.body
  rescue StandardError => e
    puts "Response status: 404 Not found"
    puts 'Response body:'
    puts "{}"
  end
end
