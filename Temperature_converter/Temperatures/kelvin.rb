require_relative 'temperature_interface'

class Kelvin < TemperatureInterface

  def convert_to_celcius(temperature)
    return temperature + 273.15
  end

  def convert_from_celcius(temperature)
    return temperature - 273.15
  end

end
