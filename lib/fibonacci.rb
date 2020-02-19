module Fibonacci
  def self.sum_evens(max)
    return 0 if max < 3

    sum = 2
    penult_term = 1
    last_term = 2
    current_term = 3

    while current_term < max
      sum += current_term if current_term % 2 == 0

      penult_term = last_term
      last_term = current_term
      current_term = penult_term + last_term
    end

    sum
  end
end
