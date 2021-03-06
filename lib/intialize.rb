require_relative('../lib/stylint')
require 'colorize'

class Linters
  include Stylint

  def initialize(file_path)
    @file_path = file_path
    @errors = []
  end

  def check_pass
    num = 0
    File.readlines(@file_path).each do |line|
      num += 1
      selectors_hyphen_check(line, num)
      selectors_newline_check(line, num)
      double_braces_check(line, num)
      double_bracket_check(line, num)
      space_after_colon(line, num)
      semicolon_end_check(line, num)
      invalid_hexcode_check(line, num)
      missing_grid_check(line, num)
      font_check(line, num)
    end

    @errors.length.zero? ? @errors << ' NO Errors were found, You have passed all the checks SUCCESSFULLY!!.'.colorize(:green) : @errors.sort { |ele1, ele2| ele2 <=> ele1 }
  end
end
