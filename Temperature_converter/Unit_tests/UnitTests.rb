require 'rspec'
require_relative '../Temperatures/celcius'
require_relative '../Temperatures/fahreinheit'
require_relative '../Temperatures/kelvin'
require_relative '../temperature_converter'
require_relative '../application'

RSpec.describe TemperatureInterface do
  let(:temperature_interface) { TemperatureInterface.new }

  it 'raises NotImplementedError for convert_to_celsius' do
    expect { temperature_interface.convert_to_celcius }.to raise_error(NotImplementedError)
  end

  it 'raises NotImplementedError for convert_from_celsius' do
    expect { temperature_interface.convert_from_celcius }.to raise_error(NotImplementedError)
  end
end

RSpec.describe Celcius do
  let(:celsius) { Celcius.new }

  it 'converts to Celsius correctly' do
    expect(celsius.convert_to_celcius(100)).to eq(100)
    expect(celsius.convert_to_celcius(100.000)).to eq(100.00)
  end

  it 'converts from Celsius correctly' do
    expect(celsius.convert_from_celcius(100)).to eq(100)
  end
end

RSpec.describe Kelvin do
  let(:kelvin) { Kelvin.new }

  it 'converts to Celsius correctly' do
    expect(kelvin.convert_to_celcius(0)).to eq(273.15)
  end

  it 'converts from Celsius correctly' do
    expect(kelvin.convert_from_celcius(273.15)).to eq(0)
  end
end

RSpec.describe Fahreinheit do
  let(:fahrenheit) { Fahreinheit.new }

  it 'converts to Celsius correctly' do
    expect(fahrenheit.convert_to_celcius(32)).to eq(0)
  end

  it 'converts from Celsius correctly' do
    expect(fahrenheit.convert_from_celcius(0)).to eq(32)
  end
end

RSpec.describe TemperatureConverter do
  let(:converter) { TemperatureConverter.new }
  let(:fahrenheit) { Fahreinheit.new }
  let(:celsius) { Celcius.new }

  it 'converts Fahrenheit to Celsius' do
    expect(converter.convert(fahrenheit, celsius, 32)).to eq(0)
  end
end

RSpec.describe Application do
  it 'runs without errors' do
    expect { Application.new.run }.not_to raise_error
  end
end
