require 'pry'
class Park
    attr_reader :name, :admission_price, :vehicles, :passengers, :revenue, :names_list
    def initialize(name,admission_price)
        @name = name
        @admission_price = admission_price
        @vehicles = []
        @passengers = []
        @revenue = 0
        @names_list = []
        
    end

    def vehicles_enter_park(vehicle)
        @vehicles << vehicle
    end

    def passengers_enter_park(passenger)
        @passengers << passenger
    end

    def collect_revenue
        admitants = @passengers.map do |passenger|
            passenger
        end
        admitants.map do |attribute|
            if attribute.age >= 18
                @revenue +=25
            
            end
        end
    end
    def list_names
        people = @passengers.map do |passenger|
            passenger
        end
        people.map do |attribute|
            @names_list << attribute.name
        end
    end

    def list_names_alphabetically
        @names_list = @names_list.sort
    end

    def minors_list
        minors_list = []
        people = @passengers.find_all do |passenger|
            passenger.age <18
        end
        people.map do |attribute|
            minors_list << attribute.name
        end
        minors_list.sort
    end

    def adults_list
        adults_list = []
        people = @passengers.find_all do |passenger|
            passenger.age >= 18
        end
        people.map do |attribute|
            adults_list << attribute.name
        end
        adults_list.sort
    end

    

   
end