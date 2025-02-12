require 'rspec'
require_relative '../../Temperatures/fahreinheit'

RSpec.describe Fahreinheit do
  let(:fahrenheit) { Fahreinheit.new }

  it 'converts to Celsius correctly' do
    expect(fahrenheit.convert_to_celcius(32)).to eq(0)
  end

  it 'converts from Celsius correctly' do
    expect(fahrenheit.convert_from_celcius(0)).to eq(32)
  end
end
