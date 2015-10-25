dog1 = "Rosco"

puts dog1.upcase

#defines method on string object
def dog1.hunt
  puts "WOOF!"
end

dog1.hunt

puts "Before class definition"

# Class definitions are executable code
class Movie
  puts "Inside class definition of #{self}"

  def self.my_class_method
    puts "Running class method..."
  end

  self.my_class_method
  # Implicitly ruby will use self as the receiver of method call when not specifying self
  my_class_method

end

puts "After class definition"

puts Movie.class #prints out Class
puts Movie.object_id
# It can be outside of class too
#   def Movie.my_class_method
#     puts "Running class method..."
#   end

# In ruby there are no class methods, this is a singleton method define in the class object
Movie.my_class_method
