class Bus
  attr_accessor :name
  attr_accessor :bus_number
  attr_accessor :route_number
  attr_accessor :busType
  attr_accessor :year
  attr_accessor :mileage
  def initialize(name, bus_number, route_number, bus_type, year, mileage)
    @name = name
    @bus_number = bus_number
    @route_number = route_number
    @bus_type = bus_type
    @year = year
    @mileage = mileage
  end

  def to_string
    "Driver #{@name} has #{@bus_number} #{@bus_type} bus with #{@route_number} route number
 which started to operate in #{year} and has mileage -  #{mileage})"
  end
end

class Buses
  def initialize(buses)
    @buses = buses
  end

  def filter_route_number(route_number)
    Buses.new(@buses.select { |bus| bus.route_number == route_number })
  end

  def filter_year(year)
    Buses.new(@buses.select { |bus| 2022 - bus.year > year })
  end

  def filter_mileage(mileage)
    Buses.new(@buses.select { |bus| bus.mileage > mileage })
  end

  def to_string
    res = ""
    @buses.each { |bus| res += bus.to_string + "\n" }
    res
  end
end

b1 = Bus.new("Mike", 741,3351, "MH2135", 2000, 10000)
b2 = Bus.new("Sara", 534, 5745, "NK323", 2010, 5000)
b3 = Bus.new("Jessica", 11, 3351, "CV231", 2020, 1000)
b4 = Bus.new("Paul", 123,4891, "CJ92", 2009, 7000)
b5 = Bus.new("Jo", 642,3351, "HJS90", 2016, 4000)

buses = Buses.new([b1, b2, b3, b4, b5])

puts "================= ALL BUSES ================="
puts buses.to_string

puts "\n================= ROUTE_NUMBER - 3351 ================="
puts buses.filter_route_number(3351).to_string

puts "\n================= BUSES USED MORE THAN 10 YEARS ================="
puts buses.filter_year(10).to_string

puts "\n================= MILEAGE MORE THAN 6000 KM ================="
puts buses.filter_mileage(6000).to_string
