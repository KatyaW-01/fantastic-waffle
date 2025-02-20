require './lib/vehicle'
require './lib/passenger'

RSpec.configure do |config|
    config.formatter = :documentation
end

RSpec.describe Vehicle do
    before(:each) do 
        @vehicle = Vehicle.new("2001", "Honda", "Civic")
    end
    describe "#initialize" do
        it 'exists' do
            expect(@vehicle).to be_a(Vehicle)
        end
        it 'has a year' do
            expect(@vehicle.year).to eq("2001")
        end
        it 'has a make' do
            expect(@vehicle.make).to eq("Honda")
        end
        it 'has a model' do
            expect(@vehicle.model).to eq("Civic")
        end
    end
    describe "#other vehicle and passenger data" do
        it 'returns true/false if speeding' do
            expect(@vehicle.speeding?).to eq(false)
        end
        it 'can return true if vehicle speeds' do
            expect(@vehicle.speeding?).to eq(false)
            @vehicle.speed
            expect(@vehicle.speeding?).to eq(true)
        end
        it 'can return an empty array of passengers' do
            expect(@vehicle.passengers).to eq([])
        end

    before(:each) do
        @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        @jude = Passenger.new({"name" => "Jude", "age" => 20})
        @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    end

        it 'can add passengers to a vehicle' do
            @vehicle.add_passenger(@charlie)
            @vehicle.add_passenger(@jude)
            @vehicle.add_passenger(@taylor)

            expect(@vehicle.passengers).to eq([@charlie,@jude,@taylor])
        end

        it 'can count the number of adults' do
            @vehicle.add_passenger(@charlie)
            @vehicle.add_passenger(@jude)
            @vehicle.add_passenger(@taylor)

            expect(@vehicle.num_adults).to eq(2)
        end

    end
end