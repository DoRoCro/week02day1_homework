require('minitest/autorun')
require('minitest/rg')
require_relative('./part_B')

class TestPartB <  Minitest::Test

  def test_team_new
    team_name = "Crystal Palace"
    team_players = [ 'alpha', 'bravo', 'charlie']
    team_coach = "Delta"
    # a_team = Team.new(team_name, team_players, team_coach)
    # assert_equal("Douglas", student.name)
    # assert_equal(10, student.cohort)
  end
end