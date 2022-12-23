# frozen_string_literal: true

require './person'

class Student < Person
  def initialize(age, name = 'Unknown', parent_permission)
    super(age, name, parent_permission)
    @classroom = nil
  end

  def play_hooky
    '¯\(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students << self unless classroom.students.include?(self)
  end
end
