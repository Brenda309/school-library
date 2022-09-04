require_relative './app'

def list_of_options
  puts 'Please choose an option by entering a number:'
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all rentals for a given id'
  puts '7 - exit'
end

def actions(option, app)
  case option
  when 1
    list_books(app)
  when 2
    list_people(app)
  when 3
    create_person(app)
  when 4
    create_book(app)
  when 5
    create_rental(app)
  when 6
    list_rentals_by_id(app)
  end
end

def list_books(app)
  app.list_books
end

def list_people(app)
  app.list_people
end

def create_person(app)
  puts 'Click 1 to create a student  click (2) a teacher [Input the number]: '
  selection = gets.chomp.to_i

  if [1, 2].include?(selection)
    puts 'Age: '
    age = gets.chomp.to_i
    puts 'Name: '
    name = gets.chomp

    case selection
    when 1
      puts 'Has parent permission? [Y/N]: '
      parent_permission = gets.chomp
      app.create_student(age, name, parent_permission)
    when 2
      puts 'Specialization: '
      specialization = gets.chomp
      app.create_teacher(age, name, specialization)
    end
  else
    puts 'Wrong Selection, returning to menu'
  end
end

def create_book(app)
  puts 'Title: '
  title = gets.chomp
  puts 'Author: '
  author = gets.chomp
  app.create_book(title, author)
end


def create_rental(app)
  unless app.list_books_with_index.nil?
    puts 'Please select a book from the list by index number: '
    book_i = gets.chomp.to_i
    puts ''

   
    unless app.list_people_with_index.nil?

      puts 'Please select a person from the list by index number(not id): '
      person_i = gets.chomp.to_i
      puts ''

on
      puts 'Date: '
      date = gets.chomp

      app.create_rental(date, person_i, book_i)
    end
  end
end

def list_rentals_by_id(app)
  unless app.list_people_with_index.nil?
    puts 'ID of the person'
    person_id = gets.chomp.to_i
    app.list_rentals_by_id(person_id)
  end
end

def main
  app = App.new
  puts 'Welcome to the Oop University Library app!'
  puts ''

  loop do
    list_of_options
    option = gets.chomp.to_i
    if (1..7).include?(option)
      actions(option, app)
    else
      puts 'Sorry, wrong option! please try again'
      puts ''
      sleep(1)
    end
    break if option == 7
  end
  puts 'Thanks for visiting our libray!'
end

main