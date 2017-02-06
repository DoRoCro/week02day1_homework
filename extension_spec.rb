require('minitest/autorun')
require('minitest/rg')
require_relative('./extension')

class TestExtension <  Minitest::Test

  def setup
    @book1 = { 
      title: "lord_of_the_rings",
      rental_details: { 
       student_name: "Jeff", 
       date: "01/12/16"
      }
    }
    @book2 = {
      title: "the_hobbit",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
      }
    }
    @book3 = {
      title: "the_silmarillion",
      rental_details: {
        student_name: "",
        date: ""
      }
    }
  end


  def test_new_library
    a_library = Library.new
    assert_equal( [], a_library.books)
  end

  def test_add_book_to_empty_library
    a_library = Library.new
    a_library.books << @book1
    assert_equal(@book1, a_library.books[0])
  end


end