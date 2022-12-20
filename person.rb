class Person 
  initialize(name="Unknown", age, parent_permission=true)
    @id
    @name = name
    @age = age
  end
  attr_reader :id, :name, :age
  attr_writer :name, :age

  private def is_of_age?
    if @age >= 18
      return true
    else
      return false
    end
  end

  def can_use_services?
    return is_of_age? || parent_permission
  end
end