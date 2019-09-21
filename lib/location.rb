# + `Location.all`
#   + Returns an array of all `Location` instances, irrespective of the `Restaurant` each `Location` belongs to
# + `Location.all_addresses`
#   + Returns an array of the address of all `Location` instances.

class Location

    attr_reader :name, :restaurant, :rent, :address

    @@all = []

    def initialize(name, restaurant, rent, address)
        @name = name
        @restaurant = restaurant
        @rent = rent
        @address = address
        @@all << self
    end

    def self.all
    # + `Location.all`
    #   + Returns an array of all `Location` instances, irrespective of the `Restaurant` each `Location` belongs to
        @@all
    end

    def self.all_addresses
    # + `Location.all_addresses`
    #   + Returns an array of the address of all `Location` instances.
        @@all.map do |location|
            location.address
        end
    end

    # bonus

    def hire_employee(name, restaurant, pay)
    # + `Location#hire_employee`
    #   + Creates a new `Employee` instance for this `Location`
        Employee.new(name, restaurant, self, pay)
    end

end
