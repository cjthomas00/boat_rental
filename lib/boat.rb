class Boat
  attr_reader :type, :price_per_hour
  
  def initialize(symbol, price_per_hour)
    @type = symbol
    @price_per_hour = price_per_hour
  end
end