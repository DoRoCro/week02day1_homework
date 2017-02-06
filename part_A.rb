class Student

  attr_accessor :name, :cohort

  def initialize(name,cohort)
    @name = name
    @cohort = cohort
  end

  def say_my_name
    return "My name is " + @name
  end

end