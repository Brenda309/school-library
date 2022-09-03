require './namable'
class Person < Nameable
  attr_reader :id :rentals
  attr_accessor :age, :name

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @age = age
    @name = name
    @parent_permission = parent_permission
    @rental = []
  end

  def can_use_service?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end

    def add_rental(book, date)
    Rental.new(date, self, book)
  end
  private

  def of_age?
    age >= 18
  end
end
