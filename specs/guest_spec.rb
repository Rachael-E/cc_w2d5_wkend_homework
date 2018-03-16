require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../guest')

class TestGuest < Minitest::Test

  def setup
    @guest1 = Guest.new("Rachael", 15)
    @guest2 = Guest.new("Rebecca", 10)
    @guest3 = Guest.new("Kenny", 5)
  end

  def test_guest_has_name
    assert_equal("Rachael", @guest1.name)
  end

  def test_guest_has_money
    assert_equal(10, @guest2.money)
  end

  


end
