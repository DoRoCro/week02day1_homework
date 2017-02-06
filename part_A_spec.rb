require('minitest/autorun')
require('minitest/rg')
require_relative('./part_A')

class TestPartA <  Minitest::Test

  def test_student
    student = Student.new("Douglas", 10)
    assert_equal("Douglas",student.name)
    assert_equal(10, student.cohort)
  end

end
