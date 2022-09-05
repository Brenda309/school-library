require './book'

class App
  attr_accessor :books, :people, :rentals
end

def initialize
  @people = []
  @books = []
  @rentals = []
end

# List all books.
def list_of_books
  if books.empty?
    put 'Libray is empty'
  else
    books.each do |book|
      puts " Author: #{book.author}"
      puts "Title: #{book.title}"
    end
  end
end

# List all peaple.
def list_of_people
  if people.empty?
    put 'No one registered yet'
  else
    people.each do |person|
      put "id: #{person.id} "
      put "Name: #{person.name}"
      put " Age: #{person.age}"
    end
  end
end
