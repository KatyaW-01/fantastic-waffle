require './lib/passenger'

# This block helps format the test results
RSpec.configure do |config|
  config.formatter = :documentation
end

# Your tests should start here!
RSpec.describe Passenger do 
    before(:each) do
      @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      @taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
    end
    it 'exists' do
      expect(@charlie).to be_a(Passenger)
      expect(@taylor).to be_a(Passenger)
    end
    it 'has a name' do
      expect(@charlie.name).to eq("Charlie")
      expect(@taylor.name).to eq("Taylor")
    end
    it 'has an age' do
      expect(@charlie.age).to eq(18)
      expect(@taylor.age).to eq(12)    
    end
    it 'returns true/false if adult' do
      expect(@charlie.adult?).to eq(true)
      expect(@taylor.adult?).to eq(false)
    end
    it 'returns true/false if a driver' do
      expect(@charlie.driver?).to eq(false)
    end
    it 'can become a driver' do
      @charlie.drive
      expect(@charlie.driver?).to eq(true)
    end
end