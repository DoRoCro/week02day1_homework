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

  def list_all
    i = 0
    for book in @books
      puts "Title: #{book[:title]},"
      puts " on loan to: #{book[:rental_details][:student_name]} until #{book[:rental_details][:date]}"
      i += 1
    end
  return i
  end

  def details_all(book_name)
    for x in @books
      return x if (x[:title] == book_name)
    end
    return
  end

  def details_rental(book_name)
    return details_all(book_name)[:rental_details]
  end

end