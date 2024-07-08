#!/usr/bin/ruby

def print_arguments
  if ARGV.length == 0
    puts 'No arguments provided.'
  end
  if ARGV.length >= 1
    for arg in 0..(ARGV.length - 1)
      puts "#{arg + 1}. #{ARGV[arg]}"
    end
  end
end
