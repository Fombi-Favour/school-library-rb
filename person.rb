class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age

  # constructor
  def initialize(age, name = 'Unknown', parent_permision: true)
    super()
    @id = Random.rand(1..1000)
    @age = age
    @name = name
    @parent_permision = parent_permision
  end

  private

  def of_age?
    true if @age >= 18
  end

  def can_use_services
    true if of_age? || @parent_permision
  end

  def correct_name
    super
    @name
  end
end
