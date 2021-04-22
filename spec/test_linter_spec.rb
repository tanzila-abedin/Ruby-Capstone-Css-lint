require_relative '../lib/intialize'
require_relative '../lib/stylint'

describe Linters do
     subject(:check) {Linters.new('../assets/style.css')}

end