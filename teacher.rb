class Teacher < Person
  attr_accessor :specialization

  def initialize(age, specialization, name = 'unknown', parent_permision: true)
    super(name, age, parent_permision: parent_permision)
    @specialization = specialization
  end

  def can_use_services
    super
    true
  end
end
