number = {
  high: 100,
  medium: 50,
  low: 10
}
half_numbers = Array.new

number.map { |key, value| half_numbers.push(value / 2) }

p half_numbers