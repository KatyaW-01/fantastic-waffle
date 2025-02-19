require './lib/vehicle'
require './lib/passenger'
require './lib/park'

RSpec.configure do |config|
    config.formatter = :documentation
end

RSpec.describe Park do
    before(:each) do
        @park = Park.new("The Great Plates", 25)
    end
    it 'exists' do
        expect(@park).to be_a(Park)
    end
    it 'has a name' do
        expect(@park.name).to eq("The Great Plates")
    end
    it 'has an admission price' do
        expect(@park.admission_price).to eq(25)
    end
    before(:each) do
        @vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
        @vehicle_2 = Vehicle.new("2016", "Volkswagen", "Tiguan")
        @vehicle_3 = Vehicle.new("2020", "Toyota", "Rav4")
        @vehicle_4 = Vehicle.new("2009", "Toyota", "Prius")
        @vehicle_5 = Vehicle.new("1998", "Jeep", "Wrangler")
    end
    it 'can return an array of vehicles that have entered the park' do
        expect(@park.vehicles).to eq([])

        @park.vehicles_enter_park(@vehicle_1)
        @park.vehicles_enter_park(@vehicle_2)
        @park.vehicles_enter_park(@vehicle_3)
        @park.vehicles_enter_park(@vehicle_4)
        @park.vehicles_enter_park(@vehicle_5)

        expect(@park.vehicles).to eq([@vehicle_1,@vehicle_2,@vehicle_3,@vehicle_4,@vehicle_5])
    end
    before(:each) do
        @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        @jude = Passenger.new({"name" => "Jude", "age" => 20})
        @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
        @samantha = Passenger.new({"name" => "Samantha", "age" => 19})
        @becky = Passenger.new({"name" => "Becky", "age" => 53})
        @emory = Passenger.new({"name" => "Emory", "age" => 27})
    end
    it 'can return an array of passengers that have entered the park' do
        expect(@park.passengers).to eq([])

        @park.passengers_enter_park(@charlie)
        @park.passengers_enter_park(@jude)
        @park.passengers_enter_park(@taylor)
        @park.passengers_enter_park(@samantha)
        @park.passengers_enter_park(@becky)
        @park.passengers_enter_park(@emory)

        expect(@park.passengers).to eq([@charlie,@jude,@taylor,@samantha,@becky,@emory])

    end
end