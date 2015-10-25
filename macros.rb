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

module ActiveRecord
  class Base
    def self.has_many(name)
      puts "#{self} has many #{name}"

      #def posts
      #  puts "SELECT * FROM posts WHERE..."
      #  puts "Returning posts"
      #  []
      #end
      define_method(name) do
        puts "SELECT * FROM #{name} WHERE..."
        puts "Returning #{name}"
        []
      end
    end
  end
end

class User < ActiveRecord::Base
#  def self.has_many(name)
#    puts "#{self} has many #{name}"

    #def posts
    #  puts "SELECT * FROM posts WHERE..."
    #  puts "Returning posts"
    #  []
    #end

#    define_method(name) do
#      puts "SELECT * FROM #{name} WHERE..."
#      puts "Returning #{name}"
#      []
#    end
#  end

  has_many :posts
  has_many :comments
end

class Project < ActiveRecord::Base
  has_many :tasks
end

user = User.new
user.posts
user.posts
user.comments

project = Project.new
project.tasks
