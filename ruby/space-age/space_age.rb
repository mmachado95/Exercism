class SpaceAge
  EARTH_ORBITAL_PERIOD = 31_557_600.0
  ORBITAL_YEARS = {
    earth: 1
    mercury: 0.2408467,
    venus: 0.61519726,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132
  }

  def initialize(age)
    @age = age
  end

  ORBITAL_YEARS.each do |planet, orbital_year|
    define_method("on_#{planet}") do
      (@age / (EARTH_ORBITAL_PERIOD * orbital_year)).round(2)
    end
  end
end
