require 'pry'
class Park
    attr_reader :name, :admission_price, :vehicles, :passengers, :revenue
    def initialize(name,admission_price)
        @name = name
        @admission_price = admission_price
        @vehicles = []
        @passengers = []
        @revenue = 0
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
end