class Teacher < Person
  attr_accessor :specialization

  def initialize(id, age, parent_permision, specialization, name = 'unknown')
    super(id, name, age, parent_permision)
    @specialization = specialization
  end

  def can_use_services
    super
    true
  end
end
