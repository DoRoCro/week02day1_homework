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
    assert_equal(0, a_team.points)
  end

  def setup_basic_team
    team_name = "Crystal Palace"
    team_players = [ 'alpha', 'bravo', 'charlie']
    team_coach = "Delta"
    return Team.new(team_name, team_players, team_coach)
  end

  def test_coach_sacked
    a_team = setup_basic_team
    a_team.coach ="Allardyce"
    assert_equal("Allardyce", a_team.coach)
  end

  def test_new_player_added
    a_team = setup_basic_team
    a_team.add_player("Mark")
    assert_equal([ 'alpha', 'bravo', 'charlie', 'Mark'], a_team.players)
  end

  def test_player_in_team__found
    a_team = setup_basic_team
    assert_equal( true, a_team.player_found?('charlie'))
  end

  def test_player_in_team__not_found
    # could combine this with test above ...
    a_team = setup_basic_team
    assert_equal( false, a_team.player_found?('Mark'))
  end

  def test_points_update__win
    a_team = setup_basic_team
    assert_equal( 3, a_team.add_result("win"))
    assert_equal( 3, a_team.add_result("lose"))
  end

end