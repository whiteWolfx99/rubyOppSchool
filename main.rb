require_relative 'app'

def print_question
  puts 'Please choose an option by entering a number:'
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all rentals for a given person id'
  puts '7 - Exit'
  print 'Enter Option: '
end

class Main
  app = App.new
  puts 'Welcome'
  loop do
    print_question
    selected = app.select_opt
    break if selected == 7
  end
end

Main
