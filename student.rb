require './person'

# Student class inherits from Person
class Student < Person
  def initialize(age, classroom, _name = 'Unknown', parent_permission: true)
    super(age, name = 'Unknown', parent_permission: true)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
