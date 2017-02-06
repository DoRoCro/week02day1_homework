require('minitest/autorun')
require('minitest/rg')
require_relative('./part_A')

class TestPartA <  Minitest::Test

  def test_student
    student = Student.new("Douglas", 10)
    assert_equal("Douglas",student.name)
    assert_equal(10, student.cohort)
  end

  def test_change_student_name_cohort
    student = Student.new("Douglas", 10)
    student.name = "Rob"
    student.cohort = 9
    assert_equal(9, student.cohort)
    assert_equal("Rob", student.name)    
  end

  def test_student_talks
    
  end

end
