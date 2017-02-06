class Team
  attr_accessor :name, :players, :coach, :points

  def initialize(team_name, players, coach)
    @name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_player(player_name)
    @players << player_name
  end

  def player_found?(player_name)
    return @players.include?(player_name)
  end

end