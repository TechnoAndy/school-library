require './app'

def main
  welcome_message = "Welcome to School Library App! \n\n 
  Please choose an option to proceed: \n 
  1 - List all books
  2 - List all people
  3 - Create a person
  4 - Create a book
  5 - Create a rental
  6 - List all rentals for a given person id
  7 - Exit "

  def display_message(message)
    puts message
    in_name = gets.chomp

    case in_name
    when "1"
      print "cool!"
      display_message(message)
    when "7"
      print "Exiting...."
      exit
    else
      print "Not cool"
      display_message(message)
    end
  end
  display_message(welcome_message)
  
end

main
