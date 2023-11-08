class App
  # constructor
  def initialize
    @books = []
    @persons = []
    @rentals = []
  end
  # list all books
  # list all people
  # create a person
  def create_person
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    choice_person = gets.chomp.to_i
    print 'Age: '
    age = gets.chomp.to_i
    print 'Name: '
    name = gets.chomp

    case choice_person
    when 1
      print 'Has parent permission? [Y/N]: '
      permission = gets.chomp
      permission = true if %w[Y y].include?(permission)
      permission = false if %w[N n].include?(permission)

      @persons << Student.new(age, name, permission)
    when 2
      print 'Specialization: '
      specialization = gets.chomp

      @persons << Teacher.new(age, specialization, name)
    end
    puts 'Person created successfully'
  end
  # create a book
  # create a rental
  # list all rentals for a given person id
end
