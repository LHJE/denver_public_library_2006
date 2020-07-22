require 'pry'

class Author

  attr_reader :first_name, :last_name, :books

  def initialize(author)
    @first_name = author[:first_name]
    @last_name = author[:last_name]
    @books = []
  end

  def name
    first_name + " " + last_name
  end

  def write(book_title, pub_date)
    books << (Book.new({author_first_name: first_name, author_last_name: last_name, title: book_title, publication_date: pub_date}))
  end

end
