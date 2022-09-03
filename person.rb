class Person
  attr_reader :id
  attr_accessor :age, :name
 
def initialize(age, parent_permission: true, name ="unknown")
@name = name
@age = age
@parent_permission = parent_permission
end

def can_use_service
of_age || parent_permission
end

private

 def is_of_age?
 @age >= 18
 end
end