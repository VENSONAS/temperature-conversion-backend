require 'rspec'
require_relative '../application'

RSpec.describe Application do
  it 'runs without errors' do
    expect { Application.new.run }.not_to raise_error
  end
end
