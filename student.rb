require './person'

class Student < Person
  initialize(classroom)
    super()
    @classroom = classroom
  end

  def play_hooky
    return "¯\(ツ)/¯"
  end
end