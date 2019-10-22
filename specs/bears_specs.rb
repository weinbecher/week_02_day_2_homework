require("minitest/autorun")
require("minitest/rg")
require_relative('../bears')
require_relative('../river')
require_relative('../fish')


class TestBears < MiniTest::Test

	def setup
		@bear1 = Bears.new("Nate","brown")
    @river1 = River.new("Amazon")
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Willian")
    @fish3 = Fish.new("Wallace")
	end

  def test_bear_has_name
    assert_equal("Nate", @bear1.name)
  end

  def test_bear_has_type
    assert_equal("brown", @bear1.type)
  end

  def test_check_stomach
    assert_equal(0, @bear1.check_stomach)
  end

  # - A bear should be able to take a fish from the river
  def test_bear_take_fish
    @river1.add_fish(@fish1)
    @river1.add_fish(@fish2)
    @bear1.bear_take_fish(@fish1)
    assert_equal(1,@bear1.check_stomach)
  end

end


#
# ## Extensions
#
# - A bear could have a roar method
# - A bear could have a food_count method
# - A river could have a fish_count method -->
