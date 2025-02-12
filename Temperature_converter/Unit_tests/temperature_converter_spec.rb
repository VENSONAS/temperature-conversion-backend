require 'rspec'
require_relative '../temperature_converter'
require_relative '../Temperatures/celcius'
require_relative '../Temperatures/fahreinheit'

RSpec.describe TemperatureConverter do
  let(:converter) { TemperatureConverter.new }
  let(:fahrenheit) { Fahreinheit.new }
  let(:celsius) { Celcius.new }

  it 'converts Fahrenheit to Celsius' do
    expect(converter.convert(fahrenheit, celsius, 32)).to eq(0.00)
  end
end
