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
end