require('minitest/autorun')
require('minitest/rg')
require_relative('./part_B')

class TestPartB <  Minitest::Test

  def test_team_new
    team_name = "Crystal Palace"
    team_players = [ 'alpha', 'bravo', 'charlie']
    team_coach = "Delta"
    a_team = Team.new(team_name, team_players, team_coach)
    assert_equal("Crystal Palace", a_team.name)
    assert_equal( team_players, a_team.players)
    assert_equal(team_coach, a_team.coach)
  end

  def test_coach_sacked
    team_name = "Crystal Palace"
    team_players = [ 'alpha', 'bravo', 'charlie']
    team_coach = "Delta"
    a_team = Team.new(team_name, team_players, team_coach)
    a_team.set_coach("Allardyce")
    assert_equal("Allardyce", a_team.coach)
    
  end
end