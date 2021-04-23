#!/usr/bin/env ruby

require_relative '../lib/intialize'

check_linters = Linters.new('../assets/style.css')

puts check_linters.check_pass
