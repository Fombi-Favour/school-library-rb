def main
  app = App.new
  puts 'Welcome to School Library App!\n\n'

  begin
    puts 'Please choose an option by enterin a number:'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'

    choice = gets.chomp.to_i

    case choice
    when 1 then app.list_books
    when 2 then app.list_persons
    when 3 then app.create_person
    when 4 then app.create_book
    when 5 then app.create_rental
    when 6 then app.list_rentals
    when 7
      puts 'Thank you for using this app!\n'
    end
  end while choice != 7
end

main