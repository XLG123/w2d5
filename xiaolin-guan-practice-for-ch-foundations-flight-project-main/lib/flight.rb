require_relative "passenger"

class Flight
    attr_reader :passengers

    def initialize(flight_num, capacity)
        @flight_number = flight_num
        @capacity = capacity
        @passengers = []
    end

    def full?
        @passengers.length == @capacity
    end

    def board_passenger(passenger)
        return false if full?
        if passenger.has_flight?(@flight_number)
            @passengers << passenger
            return true
        end
        false
    end

    def list_passengers
        @passengers.map { |passenger| passenger.name }
    end

    def [](index)
        self.passengers[index]
    end
    
    def <<(passenger)
        self.board_passenger(passenger)
    end
end