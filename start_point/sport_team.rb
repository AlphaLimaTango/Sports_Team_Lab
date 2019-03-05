class Team
  attr_accessor :team_name, :players, :coach,:points

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  def check_player(player_name)
    @players.include?(player_name)
    return player_name
  end

  def check_if_win_or_lose(win)
    if win == true
      @points +=1
    end
  end

  def add_player(player)
    return @players << player
  end

end
