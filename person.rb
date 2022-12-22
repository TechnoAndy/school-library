require './decorators'

# Person is a superclass
class Person < Nameable
  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end
  attr_accessor :name, :age
  attr_reader :id

  def can_use_services?
    is_of_age? || @parent_permission
  end

  def correct_name
    @name
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
capitalized_trimmed_person = TrimmerDecorator.new(capitalizedPerson)
p capitalized_trimmed_person.correct_name
