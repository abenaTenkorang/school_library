class Rental
  attr_accessor :date, :person, :book

  def initialize(date, person, book)
    @date = date
    @person = person
    @book = book
    @person.rentals << self unless book.rentals.include?(self)
    @book.rentals << self unless person.rentals.include?(self)
  end
end
