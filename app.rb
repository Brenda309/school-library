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

  #create people
  def create_student(name, age, parent_permission: true)
   student = Student.new(name, age. parent_permission: true)
   @people.push(student)
   put "student create succefully"
  end

  def create_peaple(name, age, parent_permission: true)
    person = People.new(name, age, parent_permission :true)
    @peaple.push(person)
  end

  def create_book(title, author)
    book = Book.new(title,author)
    @books.push(book)
  end

  def create_rentals(date, person_id, book_id)
    rental = Rental.new(date, @people[person_id], @books[book_id])
    @rentals.push(rental)
  end

  def list_of_rentals(person_id)
    if rentals.empty?
    put "No rentals yet"
    else 
    filtered_rentals = @rentals.select { |rental| rental.person.id == person_id }
    filtered_rentals.each { |rental| puts "Date: #{rental.date} Book: #{rental.book.title} by #{rental.book.author}" }
  end
end
end
