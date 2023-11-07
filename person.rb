class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age

  # constructor
  def initialize(age, name = 'unknown', parent_permision: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permision = parent_permision
  end

  private

  def of_age?
    true if @age >= 18
  end

  def can_use_services
    true if of_age? || @parent_permision
  end
end
