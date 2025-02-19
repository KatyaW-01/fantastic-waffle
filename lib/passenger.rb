class Passenger
    attr_reader :name, :age
    def initialize(passenger_info)
        @name = passenger_info["name"]
        @age = passenger_info["age"]
        @can_drive = false
    end

    def adult?
        if @age >= 18
            true
        else
            false
        end
    end

    def driver?
        @can_drive
    end

    def drive
        @can_drive = true
    end
end