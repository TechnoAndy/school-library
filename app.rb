require './student'
require './teacher'
require './book'
require './rental'

class App
  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  def list_books
    @books.each_index do |index| 
      puts "#{index} => Title: #{@books[index].title}  |  Author: #{@books[index].author}" 
    end
  end

  def list_people
    label = nil
    @people.each_index do |index| 
      if @people[index].instance_of? Teacher
        label = "[Teacher]"
      elsif @people[index].instance_of? Student
        label = "[Student]"
      end
      puts "#{index} => #{label}:  Name: #{@people[index].name}  |  Age: #{@people[index].age}"  
    end
  end

  def create_person(age, name, type, permission = nil, spec = nil)
    if type == "1"
      person = Student.new(age, name, permission)
      @people << person
    elsif type == "2"
      person = Teacher.new(age, name, spec)
      @people << person
    end
  end

  def create_book(title, author)
    book = Book.new(title, author)
    @books << book
  end

  
end