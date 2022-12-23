require './person'
require './classroom'
require './book'
require './rental'

class App
  def create_person(age, name)
    person = Person.new(age, name)
    puts person.name
  end

end