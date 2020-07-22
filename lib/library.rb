require 'pry'

class Library

  attr_reader :name, :authors, :lib_books

  def initialize(name)
    @name = name
    @authors = []
    @lib_books = []
    @pub_time_frame = {}
  end

  def add_author(author)
    authors << author
  end

  def books
    authors.each do |author|
      author.books.each do |book|
        lib_books << book
      end
    end
    lib_books
  end

  def publication_time_frame_for(authors)
    book_years = []
    books.each do |book|
      book_years << book.publication_year.to_i
    end
    @pub_time_frame[:start] = book_years.sort.first.to_s
    @pub_time_frame[:end] = book_years.sort.last.to_s
    @pub_time_frame
  end



end
