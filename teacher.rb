require './person'

# Teacher class inherits from Person
class Teacher < Person
  def initialize(age, specialization, name = "Unknown", parent_permission = true)
    super(age, name = 'Unknown', parent_permission: true)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
