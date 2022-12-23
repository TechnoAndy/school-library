require './decorators'
require './classroom'
require './rental'

class Person < Nameable
  attr_accessor :id, :name, :age, :rentals

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    is_of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  def add_rental(date, book)
    Rental.new(date, book, self)
  end

  private

  # rubocop:disable Naming/PredicateName
  def is_of_age?
    return true if @age >= 18

    false
  end
  # rubocop:enable Naming/PredicateName
end

person = Person.new(22, 'maximilianus')
p person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
p capitalized_person.correct_name
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
p capitalized_trimmed_person.correct_name

book = Book.new('New Age', 'Lilith Wilson')
rental = Rental.new('20-05-2018', book, person)
p rental.book.title
