class Passenger
    attr_reader :name

    def initialize(name)
        @name = name
        @flight_numbers = []
    end

    def has_flight?(flight_num)
        flight_num = flight_num[0..1].upcase + flight_num[2..-1]
        @flight_numbers.include?(flight_num)
    end

    def add_flight(flight_num)
        flight_num = flight_num[0..1].upcase + flight_num[2..-1]
        if !has_flight?(flight_num)
            @flight_numbers << flight_num
            return true
        else
            return false
        end
    end
end