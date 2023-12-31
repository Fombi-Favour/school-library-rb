require_relative 'nameable'

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age, :rentals

  # constructor
  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  private

  def of_age?
    true if @age >= 18
  end

  def can_use_services
    true if of_age? || @parent_permision
  end

  def correct_name
    @name
  end

  def add_rental(book, date)
    Rental.new(date, book, self)
  end
end
