class TemperatureInterface

  def convert_to_celcius
    raise NotImplementedError, "Must implement #{self.class} convert_to_celcius method"
  end

  def convert_from_celcius
    raise NotImplementedError, "Must implement #{self.class} convert_from_celcius method"
  end

end
