class Team
  attr_accessor :name, :players, :coach

  def initialize(team_name, players, coach)
    @name = team_name
    @players = players
    @coach = coach
  end

  def add_player(player_name)
    @players << player_name
  end

end