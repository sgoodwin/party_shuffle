class PartyShuffle
  def party_shuffle(array)
    if array.count == 0
      return array
    end

    forshuffle = array.reverse
    
    shuffled = []

    i = 0
    loop do
      break if forshuffle.count == 0

      if i % 2 == 1
        item = forshuffle.pop
      else
        item = forshuffle.sample
        forshuffle.delete(item)
      end

      shuffled.push(item)
      i += 1
    end

    return shuffled
  end
end
