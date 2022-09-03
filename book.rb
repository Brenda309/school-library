class Book
  attr_accessor :title, :author
   attr_reader :rentals
    def initialize(title, author)
        @title= title
        @author= author
        @rental = []
    end

    def add_rentsl(rental)
    @rental.push(rental)
    rentals.book = self
end