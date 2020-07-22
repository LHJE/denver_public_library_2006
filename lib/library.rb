require 'pry'

class Library

  attr_reader :name, :authors, :lib_books

  def initialize(name)
    @name = name
    @authors = []
    @lib_books = []
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



end
