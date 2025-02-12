require 'rspec'
require_relative '../../Temperatures/celcius'

RSpec.describe Celcius do
  let(:celsius) { Celcius.new }

  it 'converts to Celsius correctly' do
    expect(celsius.convert_to_celcius(100)).to eq(100)
  end

  it 'converts from Celsius correctly' do
    expect(celsius.convert_from_celcius(100)).to eq(100)
  end
end
