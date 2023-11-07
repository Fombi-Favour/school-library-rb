class Student < Person
  attr_accessor :classroom

  def initialize(id, age, classroom, name = 'unknown', parent_permision: true)
    super(id, name, age, parent_permision)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
