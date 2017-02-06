class Team
  # using football rules for points
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

  def add_result(result)
    case result
    when "win"
      @points += 3
    when "lose"
      @points
    when "draw"
      @points += 1
    else
      return  
    end
  end
end