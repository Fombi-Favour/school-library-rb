class Student < Person
  attr_accessor :classroom

  def initialize(id, age, parent_permision, classroom, name = 'unknown')
    super(id, name, age, parent_permision)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
