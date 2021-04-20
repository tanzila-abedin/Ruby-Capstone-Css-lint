#!/usr/bin/env ruby

require_relative '../lib/initialize'

check_linters = Linters.new(gets.chomp.to_s)

puts check_linters.check_pass
