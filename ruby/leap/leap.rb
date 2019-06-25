class Year
  def self.leap?(year)
    return false unless year % 4 == 0
    return true unless year % 100 == 0
    year % 400 == 0
  end
end
