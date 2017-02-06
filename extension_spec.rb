require('minitest/autorun')
require('minitest/rg')
require_relative('./extension')

class TestExtension <  Minitest::Test

  def test_new_library
    book1 = { 
      title: "lord_of_the_rings",
      rental_details: { 
       student_name: "Jeff", 
       date: "01/12/16"
      }
    }
    book2 = {
      title: "the_hobbit",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
      }
    }

  end


end