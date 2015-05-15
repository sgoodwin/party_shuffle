require 'minitest/autorun'
require 'party_shuffle'

class PartyShuffleTest < Minitest::Test
  def test_shuffle_with_zero
    assert_equal 0, [].party_shuffle.count
  end

  def test_shuffle_with_one
    assert_equal [1], [1].party_shuffle
  end

  def test_shuffle_with_4
    original = [1, 2, 3, 4]
    shuffled = original.party_shuffle

    assert_equal original[0], shuffled[0]
    assert_equal original[2], shuffled[2]
  end
end
