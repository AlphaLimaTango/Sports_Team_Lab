class Team
  attr_accessor :team_name, :players, :coach

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
  end

  def check_player(player_name)
    @players.include?(player_name)
    return player_name
  end

end
