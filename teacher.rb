class Teacher < Person
  attr_accessor :specialization

  def initialize(id, age, specialization, name = 'unknown', parent_permision: true)
    super(id, name, age, parent_permision)
    @specialization = specialization
  end

  def can_use_services
    super
    true
  end
end
