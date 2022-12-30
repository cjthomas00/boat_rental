require './lib/boat'
require './lib/renter'
require './lib/dock'

RSpec.describe Dock do
  before(:each) do 
    @kayak_1 = Boat.new(:kayak, 20)
    @kayak_2 = Boat.new(:kayak, 20)
    @sup_1 = Boat.new(:standup_paddle_board, 15)
    @patrick = Renter.new("Patrick Star", "4242424242424242")
    @eugene = Renter.new("Eugene Crabs", "1313131313131313")
    @dock = Dock.new("The Rowing Dock", 3)
  end

  it "exists and has attributes" do 
    expect(@dock).to be_an_instance_of(Dock)
    expect(@dock.name).to eq("The Rowing Dock")
    expect(@dock.max_rental_time).to eq(3)
  end

  it "can rent boats" do 
    expect(@dock.rental_log).to eq({})
    @dock.rent(@kayak_1, @patrick)
    @dock.rent(@kayak_2, @patrick)
    @dock.rent(@sup_1, @eugene)
  end

  it "can charge rent" do 
    @dock.rent(@kayak_1, @patrick)
    @dock.rent(@kayak_2, @patrick)
    @dock.rent(@sup_1, @eugene)

    @kayak_1.add_hour
    @kayak_1.add_hour

    expected_result = {
    :card_number => "4242424242424242",
    :amount => 40
     } 
     #require 'pry'; binding.pry
    expect(@dock.charge(@kayak_1)).to eq(expected_result)
  end
end