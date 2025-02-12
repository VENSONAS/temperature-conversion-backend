require 'rspec'
require_relative '../../Temperatures/kelvin'

RSpec.describe Kelvin do
  let(:kelvin) { Kelvin.new }

  it 'converts to Celsius correctly' do
    expect(kelvin.convert_to_celcius(273.15)).to eq(0)
  end

  it 'converts from Celsius correctly' do
    expect(kelvin.convert_from_celcius(0)).to eq(273.15)
  end
end
