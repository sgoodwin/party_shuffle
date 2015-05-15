require 'minitest/autorun'
require 'party_shuffle'

class PartyShuffleTest < Minitest::Test
  def party_shuffle(array)
    PartyShuffle.new.party_shuffle(array)
  end

  def test_shuffle_with_zero
    assert_equal 0, party_shuffle([]).count
  end

  def test_shuffle_with_one
    assert_equal [1], party_shuffle([1])
  end

  def test_shuffle_doesnt_leave_one_behind
    10.times do
      shuffled = party_shuffle([1,2,3,4]).uniq
      assert_equal 4, shuffled.count
    end
  end
end
