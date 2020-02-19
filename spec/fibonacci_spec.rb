require "spec_helper"
require "fibonacci"

describe Fibonacci do
  describe ".sum_evens" do
    # Fibonacci: 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
    it "returns the sum of even terms less than the given max" do
      expect(Fibonacci.sum_evens(1)).to eq(0)
      expect(Fibonacci.sum_evens(2)).to eq(0)

      expect(Fibonacci.sum_evens(3)).to eq(2)
      expect(Fibonacci.sum_evens(8)).to eq(2)

      expect(Fibonacci.sum_evens(9)).to eq(10)  # 2 + 8
      expect(Fibonacci.sum_evens(20)).to eq(10) # 2 + 8
      expect(Fibonacci.sum_evens(34)).to eq(10) # 2 + 8

      expect(Fibonacci.sum_evens(35)).to eq(44) # 2 + 8 + 34
      expect(Fibonacci.sum_evens(70)).to eq(44) # 2 + 8 + 34
    end
  end
end
