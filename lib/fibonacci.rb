module Fibonacci
  class << self
    def sum_evens(max)
      sum_where(max, &:even?)
    end

    def sum_where(max, &block)
      return 0 if max < 2

      sum = 0
      penult_term = 0
      last_term = 1
      current_term = 1

      while current_term < max
        sum += current_term if block.call(current_term)

        penult_term = last_term
        last_term = current_term
        current_term = penult_term + last_term
      end

      sum
    end
  end
end
