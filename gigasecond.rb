module TimeExtension
  refine Numeric do
    def gigaseconds
      self * 1e9
    end
    alias :gigasecond :gigaseconds
  end
end


class Gigasecond
  using TimeExtension

  def self.from(time)
    time + 1.gigasecond
  end
end


module BookKeeping
  VERSION = 6
end
