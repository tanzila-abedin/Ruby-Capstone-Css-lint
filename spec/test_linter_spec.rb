require_relative '../lib/intialize'
require_relative '../lib/stylint'

describe Linters do
     let(:check) { Linters.new('../assets/style.css')}

     describe 'selectors_hyphen_check' do
          context 'check for camelcasing' do
               it 'should check when camelcasing is used' do
                    result = check.send(:selectors_hyphen_check,'/([A-Z][a-z0-9]+){2,}/', 3 )
                    expect(result).not_to eq(['camelcasing  is used on line number 3'])
               end
               it 'should check when camelcasing is not used' do
                    result = check.send(:selectors_hyphen_check,'/([A-Z][a-z0-9]+){2,}/', 3 )
                    expect(result).to eql(nil && false)
               end
          end
     end

     describe 'selectors_newline_check' do
          context 'when there are multiple selectors' do
               it 'check multiple selectors on the same line' do
                    result = check.send(:selectors_newline_check,('#' || '.'), 7 )
                    expect(result).not_to eq(['start each selector on a new line'])
               end
                it 'check when  multiple selectors not the same line' do
                    result = check.send(:selectors_newline_check,('#' && '.'), 7 )
                     expect(result).to eql(nil && false)
               end
          end
     end

     describe 'double_braces_check' do
          context 'when double braces are found' do
               it 'check for double OPENING or CLOSING braces' do
                    result = check.send(:double_braces_check,('{{' || '}}'),17)
                    expect(result).not_to eq(['There should one OPENING and CLOSING braces'])
               end
               it 'check when no double OPENING or CLOSING braces found' do
                    result = check.send(:double_braces_check,('{' || '}'),11)
                    expect(result).to eql(nil && false)
               end
          end
     end

     describe 'double_bracket_check' do
          context 'when double bracket are found' do
               it 'check for double OPENING or CLOSING bracket' do
                    result = check.send(:double_bracket_check,('((' || '))'),24)
                    expect(result).not_to eq(['There should be one OPENING OR CLOSING bracket'])
               end
               it 'check when no double OPENING or CLOSING braces found' do
                    result = check.send(:double_bracket_check,('(' || ')'),20)
                    expect(result).to eql(nil && false)
               end
          end
     end

     describe 'space_after_colon' do
          it 'check for no space after colon' do
               result = check.send(:space_after_colon, ': ', 20)
               expect(result).not_to eql(['put one single space after colon on the line number 20 '])
          end
          it 'check for space after colon' do
               result = check.send(:space_after_colon, ': ', 20)
               expect(result).to eql(nil && false)
          end
     end

     describe 'semicolon_end_check' do
          context 'when semi-colon is missing ' do
               it 'check for missing semi-colon' do
                    result = check.send(:semicolon_end_check, ';',33)
                    expect(result).not_to eql(['put ending semi-colon on the line number 33 '])
               end
               it 'check for semi-colon' do
                    result = check.send(:semicolon_end_check, ';',33)
                    expect(result).to eql(nil && false)
               end
          end
          
     end

     describe 'invalid_hexcode_check' do
          it 'checks for invalid hexcode' do
               result = check.send(:invalid_hexcode_check,'black'||' rgb(0, 0, 0)'||'rgba(0, 0, 0, 1)',42 )
               expect(result).not_to eql(['put valid color name or hexcode on line 42'])
          end
          it 'checks for no invalid hexcode' do
               result = check.send(:invalid_hexcode_check,'black'||' rgb(0, 0, 0)'||'rgba(0, 0, 0, 1)',42 )
               expect(result).to eql(nil && false)
          end
     end

     describe 'missing_grid_check' do
          it 'checks missing grid template area' do
               result = check.send(:missing_grid_check, "a a a" && "b b b",38)
               expect(result).not_to eql(['put ending semi-colon on the line number 33 '])
          end
          it 'checks no missing grid template area' do
               result = check.send(:missing_grid_check, "a a a" && "b b b",38)
               expect(result).to eql(nil && false)
          end
     end
    
end