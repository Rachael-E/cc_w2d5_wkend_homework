require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../guest')

class TestGuest < Minitest::Test

  def setup
    @guest1 = Guest.new("Rachael")
    @guest2 = Guest.new("Rebecca")
    @guest3 = Guest.new("Kenny")
  end

  def test_guest_has_name
    assert_equal("Rachael", @guest1.name)
  end


end
