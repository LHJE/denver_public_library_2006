
class Book

  attr_reader :author_first_name, :author_last_name, :title, :publication_date

  def initialize(book)
    @author_first_name = book[:author_first_name]
    @author_last_name = book[:author_last_name]
    @title = book[:title]
    @publication_date = book[:publication_date]
  end


  def publication_year
    publication_date[-4..-1]
  end

  def author
    author_first_name + " " + author_last_name
  end


end
