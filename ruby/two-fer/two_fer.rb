
class TwoFer
  TWO_FER = 'One for %s, one for me.'

  def self.two_fer(name='you')
    TWO_FER % name
  end
end