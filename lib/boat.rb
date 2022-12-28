class Boat
  attr_reader :type, :price_per_hour, :hours_rented

  def initialize(symbol, price_per_hour)
    @type = symbol
    @price_per_hour = price_per_hour
    @hours_rented = 0
  end

  def add_hour
    @hours_rented += 1
  end
end