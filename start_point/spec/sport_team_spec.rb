require('minitest/autorun')
require('minitest/rg')
require_relative('../sport_team')

class TestTeam < MiniTest::Test

  def test_team_name
    team = Team.new("Seahawks", ["Harry", "Ron"], "Carter")
    assert_equal("Seahawks", team.team_name)
  end

  def test_return_team_players
    team = Team.new("Seahawks", ["Harry", "Ron"], "Carter")
    assert_equal(["Harry", "Ron"], team.players)
  end

  def test_return_coach
    team = Team.new("Seahawks", ["Harry", "Ron"], "Carter")
    assert_equal("Carter", team.coach)
  end

  def test_add_new_player
    team = Team.new("Seahawks", ["Harry", "Ron"], "Carter")
    team.add_player(["Jimmy"])
    assert_equal(["Jimmy"], team.check_player(["Jimmy"]))
  end

  def test_check_player
    team = Team.new("Seahawks", ["Harry", "Ron"], "Carter")
    assert_equal("Harry", team.check_player("Harry"))
  end

  def test_add_points
    team = Team.new("Seahawks", ["Harry", "Ron"], "Carter")
    team.check_if_win_or_lose(true)
    assert_equal(1, team.points)
  end

end
