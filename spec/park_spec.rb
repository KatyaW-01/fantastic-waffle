require './lib/vehicle'
require './lib/passenger'
require './lib/park'
require 'pry'

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
        @samantha = Passenger.new({"name" => "Samantha", "age" => 15})
        @becky = Passenger.new({"name" => "Becky", "age" => 53})
        @emory = Passenger.new({"name" => "Emory", "age" => 27})
    end
    it 'can return an array of passengers that have entered the park' do
        @vehicle_1.add_passenger(@charlie)
        @vehicle_1.add_passenger(@jude)
        @vehicle_2.add_passenger(@taylor)
        @vehicle_3.add_passenger(@samantha)
        @vehicle_4.add_passenger(@becky)
        @vehicle_5.add_passenger(@emory)

        @park.vehicles_enter_park(@vehicle_1)
        @park.vehicles_enter_park(@vehicle_2)
        @park.vehicles_enter_park(@vehicle_3)
        @park.vehicles_enter_park(@vehicle_4)
        @park.vehicles_enter_park(@vehicle_5)

        expect(@park.passengers_enter_park).to eq([@charlie,@jude,@taylor,@samantha,@becky,@emory])
    end
    it 'can collect revenue' do
        expect(@park.collect_revenue).to eq(0)

        @vehicle_1.add_passenger(@charlie)
        @vehicle_1.add_passenger(@jude)
        @vehicle_2.add_passenger(@taylor)
        @vehicle_3.add_passenger(@samantha)
        @vehicle_4.add_passenger(@becky)
        @vehicle_5.add_passenger(@emory)

        @park.vehicles_enter_park(@vehicle_1)
        @park.vehicles_enter_park(@vehicle_2)
        @park.vehicles_enter_park(@vehicle_3)
        @park.vehicles_enter_park(@vehicle_4)
        @park.vehicles_enter_park(@vehicle_5)
       

        @park.collect_revenue

        expect(@park.collect_revenue).to eq(100)
    end
    # it 'can list names' do
    #     @park.passengers_enter_park(@charlie)
    #     @park.passengers_enter_park(@jude)
    #     @park.passengers_enter_park(@taylor)
    #     @park.passengers_enter_park(@samantha)
    #     @park.passengers_enter_park(@becky)
    #     @park.passengers_enter_park(@emory)

    #     @park.list_names
    #     @park.list_names_alphabetically

    #     expect(@park.list_names_alphabetically).to eq(["Becky", "Charlie", "Emory", "Jude", "Samantha", "Taylor"])
    # end
    # it 'can list names alphabetically' do
    #     @park.passengers_enter_park(@charlie)
    #     @park.passengers_enter_park(@jude)
    #     @park.passengers_enter_park(@taylor)
    #     @park.passengers_enter_park(@samantha)
    #     @park.passengers_enter_park(@becky)
    #     @park.passengers_enter_park(@emory)

    #     @park.list_names
    #     @park.list_names_alphabetically

    #     expect(@park.names_list).to eq(["Becky","Charlie","Emory","Jude","Samantha","Taylor"])
    # end

    # it 'can list all the minors alphabetically' do
    #     @park.passengers_enter_park(@charlie)
    #     @park.passengers_enter_park(@jude)
    #     @park.passengers_enter_park(@taylor)
    #     @park.passengers_enter_park(@samantha)
    #     @park.passengers_enter_park(@becky)
    #     @park.passengers_enter_park(@emory)

    #     @park.minors_list

    #     expect(@park.minors_list).to eq(["Samantha","Taylor"])
    # end

    # it 'can list all the adults alophabetically' do
    #     @park.passengers_enter_park(@charlie)
    #     @park.passengers_enter_park(@jude)
    #     @park.passengers_enter_park(@taylor)
    #     @park.passengers_enter_park(@samantha)
    #     @park.passengers_enter_park(@becky)
    #     @park.passengers_enter_park(@emory)

    #     @park.adults_list

    #     expect(@park.adults_list).to eq(["Becky","Charlie","Emory","Jude"])
    # end

   

end