require './structure.rb'
require './tools.rb'

if ARGV
file = File.open ARGV[0]

file_data = file.read

print file_data

