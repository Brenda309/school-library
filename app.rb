# rubocop:disable
require_relative './teacher'
require_relative './book'
require_relative './stundent'
require_relative './rental'
require_relative './classroom'

class App
  attr_accessor :people, :books, :rentals

  def initialize
    @people = []
    @books = []
    @rentals = []
  end

  def list_books
    if @books.length > 0
      books.each { |book| puts "Title: \"#{book.title}\", Author: #{book.author}" }
    else
      puts 'there is no books entries yet.'
    end
  end

  def list_people
    if @people.length > 0
      people.each do |person|
        puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
      end
    else
      puts 'There is no list people added yet.'
    end
  end

  def create_student(age, name, parent_permission)
    student = Student.new(age, name, @classroom, parent_permission: parent_permission)
    @people.push(student)
    puts 'Student has been created successfully'
  end

  def create_teacher(age, specialization, name)
    teacher = Teacher.new(age, specialization, name)
    @people.push(teacher)
    puts 'Teacher has been created successfully'
  end

  def create_book(title, author)
    book = Book.new(title, author)
    @books.push(book)
    puts 'Book has been created successfully'
  end

  def create_rental(date, person_index, book_index)
    puts @people[person_index].name
    rental = Rental.new(date, @people[person_index], @books[book_index])
    @rentals.push(rental)
    puts 'Book Rental was created successfully Enjoy your reading'
  end

  def list_rentals_by_id(person_id)
    filtered_rentals = @rentals.select { |rental| rental.person.id == person_id }
    filtered_rentals.each { |rental| puts "Date: #{rental.date} Book: #{rental.book.title} by #{rental.book.author}" }
  end
end
