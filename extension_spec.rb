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

  def test_list_all_book_details
    a_library = Library.new
    a_library.books << @book1
    a_library.books << @book2
    a_library.books << @book3
    assert_equal(3 , a_library.list_all)
  end

  def test_list_book_details_given_name
    a_library = Library.new
    a_library.books.push(@book1, @book2, @book3)
    result = a_library.details_all("the_hobbit")
    assert_equal(@book2, result)
  end 

  def test_list_rental_given_name
    a_library = Library.new
    a_library.books.push(@book1, @book2, @book3)
    result = a_library.details_rental("lord_of_the_rings")
    assert_equal(@book1[:rental_details], result)    
  end

  def test_add_new_book_to_library
    a_library = Library.new
    a_library.books.push(@book1, @book2, @book3)
    a_library.add_book("flash_boys")
    assert_equal("flash_boys", a_library.books[3][:title])
  end

  def test_new_rental_for_book
    a_library = Library.new
    a_library.books.push(@book1, @book2, @book3)
    a_library.new_rental("the_hobbit", "Erik", "28/02/17")
    assert_equal({
                  title: "the_hobbit", 
                  rental_details: { 
                    student_name: "Erik",
                    date: "28/02/17" 
                    }
                  },
                    a_library.details_all("the_hobbit")
                )

  end

end