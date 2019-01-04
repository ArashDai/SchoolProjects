class Vehicle
  def initialize (make, model, engine, price)
    @make = make
    @model = model
    @engine = engine
    @price= price.to_i
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

class Tesla < Vehicle
  def initialize(model,price)
    super('Tesla', model, 'Electric', price)
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
  
  def sellTesla= (car)
    @total_cars_sold+=1
    @total_sales+=car.price
    puts "Selling a #{car.make} #{car.model} with a #{car.engine} engine for $#{car.price}"
  end
end

begin
  d = Dealer.new()
  #v = Vehicle.new(input)
  #dodge = d.sellCar=(v)
  #puts (d.total_sales)
  #puts (d.total_cars_sold)
  puts"what are you selling? (model, price)"
  S = Tesla.new('S',75000)
  models = d.sellTesla=(S)
  puts (d.total_sales)
  puts (d.total_cars_sold)
  X = Tesla.new('X',85000)
  models = d.sellTesla=(X)
  puts (d.total_sales)
  puts (d.total_cars_sold)
  
end