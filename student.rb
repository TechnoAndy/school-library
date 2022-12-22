require './person'

class Student < Person
  def initialize(age, classroom, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission)
    @classroom = classroom
    @classroom.students << self
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
