class Student < Person
  attr_accessor :classroom

  def initialize (id, name = "unknown", age, parent_permision = true, classroom)
    super(id, name, age, parent_permision)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
