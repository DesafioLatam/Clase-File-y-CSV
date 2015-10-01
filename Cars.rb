class Car

  attr_accessor :model, :mpg, :cylinders, :engine_disp, :horsepower, :weight, :accelerate, :year, :origin

  def initialize(model = nil, mpg = nil, cylinders = nil, engine_disp = nil, horsepower = nil, weight = nil, accelerate = nil, year = nil, origin = nil)
    @model = model
    @mpg = mpg
    @cylinders = cylinders
    @engine_disp = engine_disp
    @horsepower = horsepower
    @weight = weight
    @accelerate = accelerate
    @year = year
    @origin = origin
  end

end

class Car2

  attr_accessor :model, :mpg, :cylinders, :engine_disp, :horsepower, :weight, :accelerate, :year, :origin

  def initialize(data = {})
    @model = data[:model]
    @mpg = data[:mpg]
    @cylinders = data[:cylinders]
    @engine_disp = data[:engine_disp]
    @horsepower = data[:horsepower]
    @weight = data[:weight]
    @accelerate = data[:accelerate]
    @year = data[:year]
    @origin = data[:origin]
  end

end