module Stylint
  # def declaration_newline_check; end

  # def capital_check(line, num)
  #  @errors << "Replace capital letters with lowercase on line #{num}"
  #  .colorize(:light_red) if line =~ /[A-Z]/
  # end

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

  # # Lowercase all hex values, e.g. #eee.
  # def hex_lowcase_check(line, num)
  #   return unless  line.include?.gsub(/^[a-z0-9_\-]+$/) #return if not
  #   @errors << "Replace the capital letters with lower case letters on the line  #{num}".colorize(:light_red) 
  #   if line =~ /^[a-z0-9_\-]+$/
  # end

  # def braces_check(line, num)
  #   strip = line.delete("\n")
  #   return unless (line.include?('{') && !strip.end_with?('{')) || (line.include?('}') && !strip.end_with?('}')) # if not include

  #   @errors.push("#{'ERROR'.red} :Line #{num} missing an opening OR closing {braces}, put closing braces '}' at the end of a sentence  on  a seperate line\n")
  # end

  # def bracket_check(line, num)
  #   strip = line.delete("\n")
  #   return unless (line.include?('(') && !strip.end_with?('(')) || (line.include?(')') && !strip.end_with?(')'))

  #   @errors.push("#{'ERROR'.red}  :Line #{num} missing an OPENING OR CLOSING (bracket), put closing bracket ')' at the end of a sentence  on  a seperate line\n")
  # end

  # # Include one space after the colon for each declaration
  # def colon_space_check
  #   return unless line.include?(':')

  #   comment = line.split(':')[1]
  #   @errors.push("Space must be after the colon on the line number #{num}").colorize(:red) if comment[0] != ' '
  # end

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
