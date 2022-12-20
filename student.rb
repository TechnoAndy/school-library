# frozen_string_literal: true

require './person'

# Student class inherits from Person
class Student < Person
  def initialize(classroom)
    super()
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
