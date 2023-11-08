class App
  # constructor
  def initialize
    @books = []
    @persons = []
    @rentals = []
  end

  # list all books
  def list_books
    @books.each do |book|
      show_book(book)
    end
  end

  # list all people
  def list_persons
    @persons.each do |person|
      show_person(person)
    end
  end

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
      permission = true if %w[Yy].include?(permission)
      permission = false if %w[Nn].include?(permission)

      @persons << Student.new(age, name, permission)
    when 2
      print 'Specialization: '
      specialization = gets.chomp

      @persons << Teacher.new(age, specialization, name)
    end
    puts 'Person created successfully'
  end

  # create a book
  def create_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp

    @books << Book.new(title, author)
    puts 'Book created successfully'
  end

  # create a rental
  def create_rental
    puts 'Select a book from the following list by number'
    @books.each_with_index do |book, index|
      print "#{index}) "
      show_book(book)
    end
    book_index = gets.chomp.to_i

    puts 'Select a person from the following list by number (not id)'
    @persons.each_with_index do |person, index|
      print "#{index}) "
      show_person(person)
    end
    person_index = gets.chomp.to_i

    print 'Date: '
    date = gets.chomp

    @rentals << Rental.new(date, @books[book_index], @persons[person_index])
    puts 'Rental created successfully'
  end

  # list all rentals for a given person id
  def list_rentals
    print 'ID of person: '
    id = gets.chomp.to_i

    # find books rented by the person_id
    find_person = @persons.find { |person| person.id == id }
    person_rentals = @rentals.select { |rental| rental.person == find_person }

    puts 'Rentals:'
    person_rentals.each do |rentals|
      puts "Date: #{rentals.date}, Book \"#{rentals.book}\" by #{rentals.author}"
    end
    @rentals
  end

  # print a book
  def show_book(book)
    puts "Title: \"#{book.title}\", Author: #{book.author}"
  end

  # print a person
  def show_person(person)
    puts "[#{person.class.name}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
  end
end