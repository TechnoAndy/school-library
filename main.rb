require './app'

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

  def launch_app(message, app)
    puts message
    input = gets.chomp

    case input
    when "1"
      app.list_books
      launch_app(message, app)
    when "2"
      print "cool!"
      launch_app(message, app)
    when "3"
      print "Enter the person name: " 
      name_input = gets.chomp
      print "Enter the person age: " 
      age_input = gets.chomp
      app.create_person(age_input, name_input)
      puts "Person Created Successfully"
      launch_app(message, app)
    when "4"
      print "Enter the book's title: " 
      btitle_input = gets.chomp
      print "Enter the book's author: " 
      bauthor_input = gets.chomp
      app.create_book(btitle_input, bauthor_input)
      puts "Book Created Successfully"
      launch_app(message, app)
    when "5"
      print "Enter the rented book's title: " 
      btitle_input = gets.chomp
      print "Enter the book's author: " 
      bauthor_input = gets.chomp
      app.create_book(btitle_input, bauthor_input)
      puts "Book Created Successfully"
      launch_app(message, app)
    when "6"
      print "cool!"
      launch_app(message, app)
    when "7"
      puts "Exiting...."
      exit
    else
      puts "Please Enter a Valid option"
      launch_app(message, app)
    end
  end
  launch_app(welcome_message, app)
  
end

main
