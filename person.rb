class Person
  attr_reader :id
  attr_accessor :age, :name
 
 def initialize(age, name = 'Unknown', parent_permission: true)
@id = Random.rand(1..1000)
@age = age
@name = name
 @parent_permission = parent_permission
end

 def can_use_service?
    is_of_age? || @parent_permission
  end

private

 def is_of_age?
 age >= 18
 end
end

person1 = Person.new(9, "sisco")
person1.id
person1.age
person1.parent_permission
person1.name

person1.is_of_age()
