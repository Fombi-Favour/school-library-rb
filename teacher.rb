class Teacher < Person
  attr_accessor :specialization
  def initialize (id, name = "unknown", age, parent_permision = true, specialization)
    super(id, name, age, parent_permision)
    @specialization = specialization
  end

  def can_use_services
    super
    true
  end
end
