class Person
 attr_reader :id
 attr_accessor :name, :age

 def initialize(age, parent_permission, name = 'Unknown')
     @age = age
     @parent_permission = true
     @name = name
 end
def can_use_services? 
  is_of_age || @parent_permission
    end
private

def is_of_age?
@age >= 18
end
end