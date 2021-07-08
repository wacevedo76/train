# takes each individual digit and adds them (recursively) until only one digit remains
def sum_of_digits(n)
  n < 0 ? 'Enter a positive integer' : n < 9 ? n : sum_of_digits((n / 10) + (n % 10))
end

def factorial(n)
  n < 0 ? 'Enter a positive integer' : n <= 1 ? 1 : n * factorial(n - 1)
end


