class Vehicle
  def initialize (input)
    @make = input[0]
    @model = input[1]
    @engine = input[2]
    @price= input[3].to_i
    puts "a #{@engine} #{@make} #{@model} for #{@price}"
  end
  
  def make
    @make
  end
  
  def price
    @price
  end
  
  def model
    @model
  end
  
  def engine
    @engine
  end
  
  def color= (value)
    @color = value
  end
end

class Dealer
  def initialize
    @total_cars_sold = 0
    @total_sales = 0
  end
  
  def total_sales
    @total_sales
  end
  
  def total_cars_sold
    @total_cars_sold
  end
  
  def sellCar= (car)
    @total_cars_sold+=1
    @total_sales+=car.price
    puts "Selling a #{car.make} #{car.model} with a #{car.engine} engine for $#{car.price}"
    
  end
end

begin
  puts"what are you selling? please enter make, model, engine, and price seperated by spaces:"
  input = STDIN.gets.chomp.split(/ /)
  d = Dealer.new()
  v = Vehicle.new(input)
  dodge = d.sellCar=(v)
  puts (d.total_sales)
  puts (d.total_cars_sold)
end