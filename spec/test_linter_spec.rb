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
    
end