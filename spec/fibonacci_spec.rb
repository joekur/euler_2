require "spec_helper"
require "fibonacci"

# Fibonacci: 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

describe Fibonacci do
  describe ".sum_evens" do
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

  describe ".sum_where" do
    it "returns a sum of terms less than the max that return true for the given block" do
      # for example, odd numbers only:
      expect(Fibonacci.sum_where(1, &:odd?)).to eq(0)
      expect(Fibonacci.sum_where(2, &:odd?)).to eq(1)
      expect(Fibonacci.sum_where(3, &:odd?)).to eq(1)
      expect(Fibonacci.sum_where(4, &:odd?)).to eq(4)   # 1 + 3
      expect(Fibonacci.sum_where(5, &:odd?)).to eq(4)   # 1 + 3
      expect(Fibonacci.sum_where(6, &:odd?)).to eq(9)   # 1 + 3 + 5
      expect(Fibonacci.sum_where(70, &:odd?)).to eq(98) # 1 + 3 + 5 + 13 + 21 + 55
    end
  end
end
