class Library

# Library = [ book1, book2, book3,...] 
  # a_book = { 
  #     title: "lord_of_the_rings",
  #     rental_details: { 
  #      student_name: "Jeff", 
  #      date: "01/12/16"
  #     }
  #   }
  attr_accessor :books
  def initialize   #create new empty Library 
    @books = []
  end

end