require './student'
require './teacher'
require './book'
require './rental'

class App
  def initialize
    @books = []
    @teachers = []
    @students = []
  end

  def list_books
    @books.each_index do |index| 
      puts "#{index} => Title: #{@books[index].title}  |  Author: #{@books[index].author}" 
    end
  end

  def list_people
    @teachers.each_index do |index| 
      puts "Teachers:  #{index} => Name: #{@teachers[index].name}  |  Age: #{@teachers[index].age}"  
    end
    @students.each_index do |index| 
      puts "Students:  #{index} => Name: #{@students[index].name}  |  Age: #{@students[index].age}"
    end
  end

  def create_person(age, name, type, permission = nil, spec = nil)
    if type == "1"
      person = Student.new(age, name, permission)
      @students << person
      puts @students
    elsif type == "2"
      person = Teacher.new(age, name, spec)
      @teachers << person
    end
  end

  def create_book(title, author)
    book = Book.new(title, author)
    @books << book
  end

  def create_rental(date, book, person)
    rental = Rental.new(date, book, person)
    print rental.book.title
  end
end