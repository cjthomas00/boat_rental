class Dock
  attr_reader :name, :max_rental_time, :rental_log

  def initialize(name, max_rental_time)
    @name = name
    @max_rental_time = max_rental_time
    @rental_log = {}
  end

  def rent(boat, renter)
    @rental_log[boat] = renter
  end

  def charge(boat)
    amount = boat.hours_rented * boat.price_per_hour
     require 'pry'; binding.pry
    card_number = @renter_log[boat].credit_card_number

  end
end