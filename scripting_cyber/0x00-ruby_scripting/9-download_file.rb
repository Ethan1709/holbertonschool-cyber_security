#!/usr/bin/ruby


require "open-uri"
require "uri"
require "fileutils"
def download(url, path)
  if ARGV.length != 2
    puts 'Usage: 10-download_file.rb URL LOCAL_FILE_PATH'
    exit
  end

  open(url) do |image|
    File.open("./test.jpg", "wb") do |file|
      file.write(image.read)
      FileUtils.mv(file.path, "#{path}")
      puts "Downloading file from #{url}}..."
    end
  end

  puts "File downloaded and saved to #{path}."


end

url = ARGV[0]
path = ARGV[1]
download(url, path)
