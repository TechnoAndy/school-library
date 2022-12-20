require './person'

class Teacher < Person
  initialize(specialization)
    @specialization = specialization
  end

  def can_use_services? 
    return true
  end
end