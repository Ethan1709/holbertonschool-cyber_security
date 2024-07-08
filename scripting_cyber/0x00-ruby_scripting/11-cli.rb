#!/usr/bin/ruby


require 'optparse'

options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: example.rb [options]"

  opts.on("-a", "--add TASK", "Add a new task") do |v|
    options[:add] = v
  end

  opts.on("-l", "--list", "List all tasks") do |v|
    options[:list] = v
  end

  opts.on("-r", "--remove INDEX", "Remove a task by index") do |v|
    options[:remove] = v
  end

  opts.on("-h", "--help", "Show help") do |v|
    puts "#{opts}\n"
    exit
  end
end.parse!

if options[:add]
  File.write('tasks.txt', "#{options[:add]}\n", mode: 'a')
  puts "Task '#{options[:add]}' added."
  puts 'Usage: cli [options]'
end

if options[:remove]
  lines = File.readlines('tasks.txt')
  lines.delete_at(options[:remove].to_i - 1)
  File.open('tasks.txt', "w") do |file|
    file.puts lines
  end
  puts "Task #{options[:remove]} removed."
  puts 'Usage: cli [options]'
end

if options[:list]
  i = 1
  puts 'Tasks:'
  File.foreach('tasks.txt') { |line|
  puts "#{i}. #{line}"
  i += 1
}
end
