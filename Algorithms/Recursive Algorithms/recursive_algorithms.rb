# takes each idivitual diggit and adds them (recursively) until only one digit remains
def sum_of_digits(n)
  n < 0 ? 'Enter a positive number" : n < 9 ? n : sum_of_digits((n / 10) + (n % 10))
end
