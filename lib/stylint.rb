module Stylint
   # Selectors must be on a new line, multiple selectors on a line are not allowed. WORKING!!!!!!!!!!!!!
  def selectors_newline_check(line, num) 
  # return unless line.count('word') > 1 #is not
    @errors << "Selectors must be on a new line, avoid using multiple line #{num}".colorize(:light_red) if line.start_with?('#' || '.')
  end

  # Must use hyphens to separate words, not underscores or camel casing.  WORKING!!!!!!!!!!!!!!!!
  def selectors_hyphen_check(line, num)
    @errors << "use hyphens to separate words, not underscore or camel casing on line #{num}".colorize(:light_red) if line =~  /([A-Z][a-z0-9]+){2,}/
    # /([A-Z]*_?[A-Z]*)*/ 
    # || line =~ /^[A-Z]\w+(?:[A-Z]\w+){1,}/x
  end

  def double_braces_check(line, num)
    # strip = line.delete("\n")
    @errors << "#{'ERROR'.red} :Line #{num} Double OPENING or CLOSING braces detected \n"  if line.include?('{{') || line.include?('}}') 
  end

  def double_bracket_check(line, num)
   @errors << "#{'ERROR'.red} :Line #{num} Double OPENING or CLOSING bracket detected \n"  if line.include?('((') || line.include?('))') 
  end

  def colon_space_check(line, number)
    return unless line.include?(':')
    miss = line.split(':')[1]
    @errors << "#{'ERROR'.red} :Add a Space after the colon on the line number #{number}\n" if miss[0] != ' '
  end
  # def declaration_newline_check; end

  # def capital_check(line, num)
  #  @errors << "Replace capital letters with lowercase on line #{num}"
  #  .colorize(:light_red) if line =~ /[A-Z]/
  # end

  # # Lowercase all hex values, e.g. #eee.
  # def hex_lowcase_check(line, num)
  #   return unless  line.include?.gsub(/^[a-z0-9_\-]+$/) #return if not
  #   @errors << "Replace the capital letters with lower case letters on the line  #{num}".colorize(:light_red) 
  #   if line =~ /^[a-z0-9_\-]+$/
  # end

  # Include one space after the colon for each declaration
  
  def space_after_colon(line, number)
    return unless line.include?(':')
    miss = line.split(':')[1]
    @errors << "#{'ERROR'.red} : a single SPACE expected after the colon on line #{number}\n" if miss[0] != ' '
  end

  # # End all declarations with a semi-colon.
  # def semicolon_end_check(line, num)
  #   strip = line.delete("\n")
  #   return unless strip.end_with?(';')

  #   @errors.push("#{'ERROR'.red} :Line #{num} should end with (';') }\n")
  # end
  # def capital_check(line, num)
  #  @errors << "Replace capital letters with lowercase on line #{num}"
  #  .colorize(:light_red) if line =~ /[A-Z]/
  # end
end
