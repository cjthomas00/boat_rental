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
      if boat.hours_rented <= @max_rental_time
        amount = boat.hours_rented * boat.price_per_hour
        cc_num = rental_log[boat].credit_card_number
      elsif boat.hours_rented > @max_rental_time
        amount = @max_rental_time * boat.price_per_hour
        cc_num = rental_log[boat].credit_card_number
      end
      
    {
      card_number: cc_num,
      amount: amount
    }
  end
end