class Student

  attr_accessor :name, :cohort

  def initialize(name,cohort)
    @name = name
    @cohort = cohort
  end

  def talks(phrase)
    return phrase 
  end

  def favourite_language(lang)
    return talks("I love " + lang + "!")
  end
end