require './lib/boat'
require './lib/renter'
require './lib/dock'

RSpec.describe dock do
  before(:each) do 
    @kayak_1 = Boat.new(:kayak, 20)
    @kayak_2 = Boat.new(:kayak, 20)
    @sup_1 = Boat.new(:standup_paddle_board, 15)
    @patrick = Renter.new("Patrick Star", "4242424242424242")
    @eugene = Renter.new("Eugene Crabs", "1313131313131313")
    @dock = Dock.new("The Rowing Dock", 3)
  end