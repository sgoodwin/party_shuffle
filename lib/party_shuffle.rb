class Array
  def party_shuffle
    if self.count == 0
      return self 
    end

    shuffled = [self[0]]
    for i in 1..(self.count-1) do
      if i % 2 == 0
        shuffled += [self[i]]
      else
        shuffled += [self.sample]
      end
    end

    return shuffled
  end
end
