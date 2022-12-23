require './app'

def launch_app(message, app)
  puts message
  input = gets.chomp

  case input
  when '1'
    app.list_books
    launch_app(message, app)
  when '2'
    app.list_people
    launch_app(message, app)
  when '3'
    print 'Do you want to create a (1) student OR a (2) teacher: '
    type_input = gets.chomp
    print 'Enter the person name: '
    name_input = gets.chomp
    print 'Enter the person age: '
    age_input = gets.chomp

    case type_input
    when '1'
      print "Does the student have their parent's permission? [Y/N] "
      permission_input = gets.chomp.upcase

      case permission_input
      when 'Y'
        app.create_person(age_input, name_input, type_input, true)
      when 'N'
        app.create_person(age_input, name_input, type_input, false)
      else
        puts 'Please Enter a Valid option'
        exit
      end

    when '2'
      print 'What is the specialization of the teacher? '
      spec_input = gets.chomp
      app.create_person(age_input, name_input, type_input, nil, spec_input)
    else
      puts 'Please Enter a Valid option'
      launch_app(message, app)
    end

    puts 'Person Created Successfully'
    launch_app(message, app)
  when '4'
    print "Enter the book's title: "
    btitle_input = gets.chomp
    print "Enter the book's author: "
    bauthor_input = gets.chomp
    app.create_book(btitle_input, bauthor_input)
    puts 'Book Created Successfully'
    launch_app(message, app)
  when '5'
    app.list_books
    print 'Please pick one of the available books: '
    input_book_index = gets.chomp
    app.list_people
    print 'Please define the person renting the book: '
    input_renter_index = gets.chomp
    print 'Please enter the rental date [yyyy-mm-dd]:  '
    input_date = gets.chomp
    app.create_rental(input_date, input_book_index, input_renter_index)
    launch_app(message, app)
  when '6'
    # app.list_people
    print 'Enter the ID of the person: '
    input_id = gets.chomp
    app.list_rentals(input_id.to_i)
    launch_app(message, app)
  when '7'
    puts 'Exiting....'
    exit
  else
    puts 'Please Enter a Valid option'
    launch_app(message, app)
  end
end

def main
  welcome_message = "\nWelcome to School Library App! \n\n
  Please choose an option to proceed:\n
  1 - List all books
  2 - List all people
  3 - Create a person
  4 - Create a book
  5 - Create a rental
  6 - List all rentals for a given person id
  7 - Exit "
  app = App.new

  launch_app(welcome_message, app)
end

main
