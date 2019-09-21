

# + `Restaurant.all`
# + Returns all `Restaurant` instances 
# + `Restaurant#locations`
# + Returns an array of all `Locations`s of this particular `Restaurant` instance 
# + `Restaurant#total_rent`
# + Returns the total amount this `Restaurant` pays for all of its `Location`s 
# + `Resturant#create_location`
# + Creats a new `Location` instance for this particular `Restuarant`


# bonus

# + `Restaurant#employees`
#   + Returns an array of each `Employee` instance that works for this `Restaurant`
# + `Restaurant#total_pay`
#   + Returns the total amount this `Restaurant` pays out to all of its employees
# + `Restaurant#total_expenses
#   + Returns the total amount this `Restaurant` pays out to all of its employees AND in rent 

class Restaurant

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
    # + `Restaurant.all`
    # + Returns all `Restaurant` instances 
        @@all
    end

    def locations
    # + `Restaurant#locations`
    # + Returns an array of all `Locations`s of this particular `Restaurant` instance 
        Location.all.select do |location|
            location.restaurant == self
        end
    end

    def total_rent
    # + `Restaurant#total_rent`
    # + Returns the total amount this `Restaurant` pays for all of its `Location`s 
        self.locations.reduce(0) do |accumulator, location|
            accumulator + location.rent
        end
    end

    def create_location(name, rent, address)
    # + `Resturant#create_location`
    # + Creats a new `Location` instance for this particular `Restuarant`
        Location.new(name, self, rent, address)
    end

    # bonus
    
    def employees
    # + `Restaurant#employees`
    #   + Returns an array of each `Employee` instance that works for this `Restaurant`
        Employee.all.select do |employee|
            employee.restaurant == self
        end
    end

    def total_pay
    # + `Restaurant#total_pay`
    #   + Returns the total amount this `Restaurant` pays out to all of its employees
        self.employees.reduce(0) do |accumulator, employee|
            accumulator + employee.pay
        end
    end

    def total_expenses 
    # + `Restaurant#total_expenses
    #   + Returns the total amount this `Restaurant` pays out to all of its employees AND in rent 
        self.total_rent + self.total_pay
    end

end
