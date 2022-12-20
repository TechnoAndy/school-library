# frozen_string_literal: true

# Person is a superclass
class Person
  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Math.rand(0, 1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end
  attr_accessor :name, :age
  attr_reader :id

  def can_use_services?
    is_of_age? || @parent_permission
  end

  private

  # rubocop:disable Naming/PredicateName
  def is_of_age?
    return true if @age >= 18

    false
  end
  # rubocop:enable Naming/PredicateName
end
