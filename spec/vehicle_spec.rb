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
end