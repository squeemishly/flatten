gem 'minitest'
require 'pry'
require 'minitest/autorun'
require_relative './coding_challenge'

class CustomArrayTest < Minitest::Test
  attr_reader :ca

  def setup
    @ca = CustomArray.new
  end

  def test_it_exists
    assert_instance_of CustomArray, ca
  end

  def test_it_flattens_an_empty_array
    assert_equal [], ca.flatten([])
  end

  def test_it_returns_an_array_with_a_single_value
    assert_equal [1], ca.flatten([1])
  end

  def test_it_returns_a_simple_array_with_multiple_values
    assert_equal ["Czarnecki", "Boudi", "squee"], ca.flatten(["Czarnecki", "Boudi", "squee"])
  end

  def test_it_returns_an_array_from_an_array_with_an_array_inside
    assert_equal [1], ca.flatten([[1]])
  end
end
