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
  

  def launch_app(message)
    app = App.new
    puts message
    input = gets.chomp

    case input
    when "1"
      print "cool!"
      launch_app(message)
    when "2"
      print "cool!"
      launch_app(message)
    when "3"
      print "Enter the person name: " 
      name_input = gets.chomp
      print "Enter the person age: " 
      age_input = gets.chomp
      app.create_person(age_input, name_input)
      puts "Person Created Successfully"
      launch_app(message)
    when "4"
      print "cool!"
      launch_app(message)
    when "5"
      print "cool!"
      launch_app(message)
    when "6"
      print "cool!"
      launch_app(message)
    when "7"
      puts "Exiting...."
      exit
    else
      puts "Please Enter a Valid option"
      launch_app(message)
    end
  end
  launch_app(welcome_message)
  
end

main
