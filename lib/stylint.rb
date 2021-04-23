module Stylint
  def selectors_newline_check(line, num)
    @errors << "Line #{num}: Selectors must be on a new line, avoid using multiple selectors on the same line".colorize(:light_red) if line.start_with?('#') && line.include?('.')
  end

  def selectors_hyphen_check(line, num)
    @errors << "Line #{num} : use hyphens to separate words, not underscore or camel casing.".colorize(:light_red) if line =~ /([A-Z][a-z0-9]+){2,}/
  end

  def double_braces_check(line, num)
    @errors << "#{'ERROR'.red} :Line #{num}: Double OPENING or CLOSING braces detected. \n" if line.include?('{{') || line.include?('}}')
  end

  def double_bracket_check(line, num)
    @errors << "#{'ERROR'.red} :Line #{num} : Double OPENING or CLOSING bracket detected. \n" if line.include?('((') || line.include?('))')
  end

  def space_after_colon(line, num)
    return unless line.include?(':')

    miss = line.split(':')[1]
    @errors << "#{'ERROR'.red} : Line #{num}: A single SPACE expected after the colon.\n" if miss[0] != ' '
  end

  def semicolon_end_check(line, num)
    return unless line.include?(':') && !line.include?(';')

    @errors << "#{'HINT'.yellow} :Line #{num} should end with semi-colon (';').\n"
  end

  def missing_grid_check(line, num)
    return unless line.include?('grid-template-areas:') && line.match('".*"')

    @errors << "#{'WARNING'.yellow} :Line #{num} All strings must define at least one cell token(valid grid-template-area name).\n"
  end

  def invalid_hexcode_check(line, num)
    @errors << "#{'WARNING'.yellow} :Line #{num} The hexcode does not exist" if line.include?('#00' || '#fff1az' || '#12345aa')
  end

  def font_check(line, num)
    return unless line.include?('font-weight') && !line.match(/\d/i)

    @errors << "#{'HINT'.yellow}: Line #{num} : The font weight should be a number."
  end
end
