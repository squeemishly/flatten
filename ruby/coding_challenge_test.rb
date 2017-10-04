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
end
