require './person'
require './classroom'
require './book'
require './rental'

class App
  def create_person(age, name)
    person = Person.new(age, name)
  end

  def create_book(title, author)
    book = Book.new(title, author)
  end

end