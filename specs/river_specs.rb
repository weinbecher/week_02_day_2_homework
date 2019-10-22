require("minitest/autorun")
require("minitest/rg")
require_relative('../river')
require_relative('../bears')
require_relative('../fish')

class TestRiver < MiniTest::Test

	def setup
		@river1 = River.new("Amazon")
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Willian")
    @fish3 = Fish.new("Wallace")

	end
  # - A river should have a name e.g. "Amazon"

  def test_river_has_name
    assert_equal("Amazon", @river1.name)
  end

  # - A river should hold many fish
  #
  def test_check_fish
    assert_equal(0, @river1.check_fish)
  end

  def test_add_fish
    @river1.add_fish(@fish1)
    @river1.add_fish(@fish2)
    @river1.add_fish(@fish3)
    assert_equal(3,@river1.check_fish)
  end

  # - A river should lose a fish when a bear takes a fish

    def test_bear_take_fish
      @bear1 = Bears.new("Nate","brown")
      @river1.add_fish(@fish1)
      @river1.add_fish(@fish2)
      @bear1.bear_take_fish(@fish1)
      @river1.lose_fish(@fish1)
      assert_equal(1,@river1.check_fish)
      assert_equal(1,@bear1.check_stomach)
    end



end
