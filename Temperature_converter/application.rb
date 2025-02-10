require_relative 'Temperatures/celcius'
require_relative 'Temperatures/fahreinheit'
require_relative 'Temperatures/kelvin'
require_relative 'temperature_converter'


class Application

  def run

    kelvin = Kelvin.new
    celcius = Celcius.new
    fahreinheit = Fahreinheit.new
    puts TemperatureConverter.new.convert(fahreinheit, celcius, 5.556)
  end

end
