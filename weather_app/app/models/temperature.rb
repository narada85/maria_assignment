class Temperature < ActiveRecord::Base
  validates :title, presence: :true
  validates :celcius, presence: :true
  
  before_save :in_fahrenheit
  
  def in_fahrenheit
    self.fahrenheit = (celcius * (9.0 / 5.0)) + 32
  end
end
