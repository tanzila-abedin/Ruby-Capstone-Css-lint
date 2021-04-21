require_relative('../lib/stylint')

class Linters
  include Stylint

  def initialize(file_path)
    @file_path = file_path
    @errors = []
  end

  def check_pass
    num = 0
    File.readlines(@file_path).each do |_line|
      num += 1
      capital_check(line, num)
    end

    if @errors.length.zero?
      @errors.push("All checks have succefully passed ! No errors detected. ").colorize(:light_green)
    else
      @errors.sort do|ele1, ele2| 
       ele2 <=> ele1 
      end
    end
  end
end
