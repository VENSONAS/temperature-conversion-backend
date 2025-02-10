require_relative 'temperature_interface'

class Fahreinheit < TemperatureInterface

  def convert_to_celcius(temperature)
    return (temperature - 32) * 5/9
  end

  def convert_from_celcius(temperature)
    return  temperature * (9/5) + 32
  end

end
