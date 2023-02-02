class Book
  attr_reader :title, :author
  attr_accessor :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(person, date)
    rentals << { person: person, date: date }
  end
end
