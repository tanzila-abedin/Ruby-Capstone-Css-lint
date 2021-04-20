require_relative('../lib/stylint')

class Linters
     include Stylint

     def initialize(file_path)
          @file_path = file_path
          @error = [] 

     end
     
     def check_pass
          num = 0
          File.readlines(@file_path).each do |line|
               num += 1


          end
        
     end
end