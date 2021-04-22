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

  # Include one space after the colon for each declaration
  
  def space_after_colon(line, number)
    return unless line.include?(':')
    miss = line.split(':')[1]
    @errors << "#{'ERROR'.red} : A single SPACE expected after the colon on line #{number}\n" if miss[0] != ' '
  end

  # End all declarations with a semi-colon.

  def semicolon_end_check(line, num)
    return unless line.include?(':') && !line.include?(';')
    @errors << "#{'WARNING'.yellow} :Line #{num} should end with semi-colon (';')\n"
  end

  def missing_grid_check(line, num)
    @errors << "#{'WARNING'.yellow} :Line #{num} All strings must define at least one cell token.\n" if line.include?('grid-template-areas: ') && line.include?("")
  end

  def invalid_hexcode_check(line, num)
    @errors << "#{'WARNING'.yellow} :Line #{num} wrong hexcode" if line.include?('#00' || '#fff1az' || '#12345aa')
  end

  def font_check (line,num)
   return unless line.include?('font-weight') && !line.match(/\d/i)
   @errors << "The font weight should be a number on the line number #{num}".colorize(:red)
  end

  # def duplicate_font_check(line,num)
  #   @errors << "#{'WARNING'.yellow} :Line #{num} Dublicate font" if line.each{|ele1,ele| ele1 == ele}
  #   # each { |ele1,ele2| ele1 == ele2}
  #   end

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

end
