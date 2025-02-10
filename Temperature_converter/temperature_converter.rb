class TemperatureConverter

  def convert(from, to, temperature)
    celcius_temperature = from.convert_to_celcius(temperature)
    return to.convert_from_celcius(celcius_temperature).round(2)
  end

end
