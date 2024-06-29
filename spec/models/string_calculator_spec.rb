require 'rails_helper'
require_relative '../../app/models/string_calculator'

RSpec.describe StringCalculator do
  let(:calculator) { StringCalculator.new }

  describe '#add' do
    it 'returns 0 for an empty string' do
      expect(calculator.add("")).to eq(0)
    end

    it 'returns the number for a single number' do
      expect(calculator.add("1")).to eq(1)
    end

    it 'throws an exception for negative numbers' do
      expect { calculator.add("1,-2,3,-4") }.to raise_error(RuntimeError, "negative numbers not allowed: -2,-4")
    end
  end
end