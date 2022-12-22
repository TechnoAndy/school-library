class Nameable
  def correct_name
    raise NotImplementedError;
  end
end

class BaseDecorator < Nameable
  def initialize(nameable)
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end

class CapitalizeDecorator < BaseDecorator
  def initialize(nameable)
    super(nameable)
  end

  def correct_name
    @nameable.correct_name.capitalize
  end
end

class TrimmerDecorator < BaseDecorator
  def initialize(nameable)
    super(nameable)
  end

  def correct_name
    @nameable.correct_name.slice!(0..9)
  end
end