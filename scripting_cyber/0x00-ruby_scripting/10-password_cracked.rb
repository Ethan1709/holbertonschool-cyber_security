#!/usr/bin/ruby


require 'digest'

def crack(hashed_password, dictionary_file)
  if ARGV.length != 2
    puts 'Usage: 10-password_cracked.rb HASHED_PASSWORD DICTIONARY_FILE'
    exit
  end

  File.foreach(dictionary_file) { |line|
  cleaned_line = line.chomp
  sha256= Digest::SHA256.hexdigest(cleaned_line)
  if sha256 == hashed_password
    puts "Password found: #{cleaned_line}"
    exit
  end
  }

  puts 'Password not found in dictionary.'
end

hashed_password = ARGV[0]
dictionary_file = ARGV[1]

crack(hashed_password, dictionary_file)
