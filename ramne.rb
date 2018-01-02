#!/usr/bin/ruby

require 'securerandom'
require 'fileutils'

WORD_COUNT = 6

count = WORD_COUNT if ARGV[1].nil?
dir_path = ARGV[0]

unless Dir::exist?(dir_path)
  puts "Directory does not exist.\n" 
  exit
end

Dir.glob("#{dir_path}*") do |file_name|
  old_name = File.join(dir_path, file_name.to_s)
  extension = File.extname(file_name)
  new_name = File.join(dir_path, "#{SecureRandom.urlsafe_base64(WORD_COUNT)}")

  print "#{file_name} -> #{new_name}#{extension}\n"

  FileUtils.mv(file_name, "#{new_name}#{extension}")
end
