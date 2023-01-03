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
      boat.hours_rented <= @max_rental_time
      amount = boat.hours_rented * boat.price_per_hour
      cc_num = rental_log[boat].credit_card_number
      
    {
      card_number: cc_num,
      amount: amount
    }
  end
end