
# + `Employee.all`
# + Returns an array of each `Employee` instance, irrespective of which `Restaurant` they work for
# + `Employee.average_pay`
# + Returns the average pay of all employees, irrespective of which `Restaurant` they work for


class Employee
    attr_reader :name, :restaurant, :location, :pay

    @@all = []

    def initialize(name, restaurant, location, pay)
        @name = name
        @restaurant = restaurant
        @location = location
        @pay = pay
        @@all << self
    end

    def self.all
    # + `Employee.all`
    # + Returns an array of each `Employee` instance, irrespective of which `Restaurant` they work for
        @@all
    end

    def self.average_pay
    # + `Employee.average_pay`
    # + Returns the average pay of all employees, irrespective of which `Restaurant` they work for
        total_pay = @@all.reduce(0) do |accessor, employee|
            accessor + employee.pay
        end
        average_pay = total_pay / Employee.all.length
    end

end