require 'csv'
require_relative 'Cars'

puts ''

####
# CSV::read = Menos eficiente a la hora de leer grandes archivos, carga todo el archivo a memoria
#
# csv = CSV.read('cars.csv', headers: true, header_converters: :symbol, converters: :numeric )
#
# csv.each do |row|
#   p row
# end
#
# p cars = csv.map(&:to_hash)
#
####


####
# CSV::foreach = Mucho mas eficiente ya que va linea por linea por lo que la memoria no se vera afectada al terminar la iteracion
#
# csv = []
# CSV.foreach('cars.csv', headers: true, header_converters: :symbol, converters: :numeric) do |row|
#   csv << row
# end
#
# csv.each do |row|
#   p row
# end
#
# p cars = csv.to_a.map(&:to_hash)
#
####

####
# CSV::open = Eficiente y al usar .each nos permite trabajar mas expresivamente
#
cars = []
csv = CSV.open('cars.csv', headers: true, header_converters: :symbol, converters: :numeric )

cars = csv.map(&:to_hash)

#
# p cars
#
####


autos = []

# cars.each do |data|
#   tempcar = Car.new

#   tempcar.model = data[:model]
#   tempcar.mpg = data[:mpg]
#   tempcar.cylinders = data[:cylinders]
#   tempcar.engine_disp = data[:engine_disp]
#   tempcar.horsepower = data[:horsepower]
#   tempcar.weight = data[:weight]
#   tempcar.accelerate = data[:accelerate]
#   tempcar.year = data[:year]
#   tempcar.origin = data[:origin]

#   autos << tempcar
# end

# cars.each do |data|
#   tempcar = Car.new
#   data.each do |k, v|
#     # tempcar.send("#{k}=", v)
#     tempcar.instance_variable_set("@#{k}", v)
#   end
#   autos << tempcar
# end


cars.each do |data|
  autos << Car2.new(data)
end


puts autos[2]
puts autos[2].model

#  puts autos.inspect