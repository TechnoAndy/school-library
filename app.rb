require './student'
require './book'
require './rental'

class App
  def initialize
    @books = []
    @teachers = []
    @students = []
  end

  def list_books
    @books.map { |book, index| puts "#{index} Title: #{book.title}   Author: #{book.author}" }
  end

  def create_person(age, name)
    person = Student.new(age, name)
    @students << person
  end

  def create_book(title, author)
    book = Book.new(title, author)
    @books << book
  end

  
end