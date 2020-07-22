require 'minitest/autorun'
require 'minitest/pride'
require './lib/book'
require './lib/author'
require 'pry'

class AuthorTest < Minitest::Test
  def test_it_exists
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    assert_instance_of Author, charlotte_bronte
  end


  def test_it_has_attributes
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    assert_equal "Charlotte", charlotte_bronte.first_name
    assert_equal "Bronte", charlotte_bronte.last_name
  end

  def test_it_can_do_full_name
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    assert_equal "Charlotte Bronte", charlotte_bronte.name
  end

  def test_initially_no_books
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    assert_equal [], charlotte_bronte.books
  end

  def test_write
    skip
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    result = Book.new({author_first_name: "Charlotte", author_last_name: "Bronte", title: "Jane Eyre", publication_date: "October 16, 1847"})

    assert_equal result, charlotte_bronte.write("Jane Eyre", "October 16, 1847")
  end

  def test_book_is_book_class
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")

    assert_equal Book, jane_eyre.class
  end

  def test_new_book_has_attributes
    skip
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")

    assert_equal "Jane Eyre", jane_eyre.title
  end

  def test_book_goes_into_books
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    villette = charlotte_bronte.write("Villette", "1853")
    binding.pry

    assert_equal [jane_eyre, villette], charlotte_bronte.books
  end


end
