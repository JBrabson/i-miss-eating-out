require 'minitest/autorun'
require 'minitest/pride'
require './lib/restaurant'

class RestaurantTest < Minitest::Test
  # Iteration 1 Tests:

  def setup
    @restaurant = Restaurant.new('10:00', 'Fuel Cafe')
  end

  def test_it_exists
    assert_instance_of Restaurant, @restaurant
  end

  def test_it_has_opening_time
    assert_equal '10:00', @restaurant.opening_time
  end

  def test_it_has_name
    assert_equal 'Fuel Cafe', @restaurant.name
  end

  def test_it_has_dishes
    assert_equal [], @restaurant.dishes
  end

  #Iteration 2 Tests:
  def test_it_has_closing_time
    restaurant1 = Restaurant.new('10:00', 'Fuel Cafe')
    restaurant2 = Restaurant.new('16:00', 'Il Poggio')
    # restaurant3 = Restaurant.new('22:00', 'Late Bites')
    assert_equal '18:00', restaurant1.closing_time(8)
    assert_equal '23:00', restaurant2.closing_time(7)
    # assert_equal '02:00', restaurant3.closing_time(4)
  end

  def test_it_can_add_dishes
    @restaurant.add_dish('Burrata')
    @restaurant.add_dish('Pizzetta')
    @restaurant.add_dish('Ravioli')

    assert_equal ['Burrata', 'Pizzetta', 'Ravioli'], @restaurant.dishes
  end

  def test_it_is_open_for_lunch
    restaurant1 = Restaurant.new('10:00', 'Fuel Cafe')
    restaurant2 = Restaurant.new('16:00', 'Il Poggio')
    assert_equal true, restaurant1.open_for_lunch?
    assert_equal false, restaurant2.open_for_lunch?
  end
end
