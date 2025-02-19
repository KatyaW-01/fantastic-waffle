class Park
    attr_reader :name, :admission_price, :vehicles, :passengers
    def initialize(name,admission_price)
        @name = name
        @admission_price = admission_price
        @vehicles = []
        @passengers = []
    end

    def vehicles_enter_park(vehicle)
        @vehicles << vehicle
    end

    def passengers_enter_park(passenger)
        @passengers << passenger
    end
end