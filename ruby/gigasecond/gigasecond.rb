class Gigasecond
  GIGASECOND = 1e9

  # Given a Time object adds a gigasecond. A gigasecond is 10**9 seconds
  # Params:
  # +time+:: +Time+ to which the gigasecond will be added.
  def self.from(time)
    time + GIGASECOND
  end
end