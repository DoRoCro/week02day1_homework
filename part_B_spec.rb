require('minitest/autorun')
require('minitest/rg')
require_relative('./part_B')

class TestPartB <  Minitest::Test

  def test_team_new
    team_name = "Crystal Palace"
    team_players = [ 'alpha', 'bravo', 'charlie']
    team_coach = "Delta"
    a_team = Team.new(team_name, team_players, team_coach)
    assert_equal("Crystal Palace", a_team.get_name)
    assert_equal( team_players, a_team.get_players)
    assert_equal(team_coach, a_team.get_coach)
  end

  def test_coach_sacked

  end
end