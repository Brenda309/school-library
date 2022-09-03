class Rental
  attr_reader :person, :book
  attr_accessor :date

  def initialize(date)
    @date = date

    @person = person
    person.rental << self

    @book = book
    book.rental << self
  end
end
