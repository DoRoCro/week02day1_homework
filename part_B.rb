class Team
  attr_accessor :name, :players, :coach

  def initialize(team_name, players, coach)
    @name = team_name
    @players = players
    @coach = coach
  end

  
  def set_coach(new_coach)
    @coach = new_coach
  end
end