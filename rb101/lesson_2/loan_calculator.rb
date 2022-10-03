name = nil
loan_amount = nil
apr = nil
annual_percentage_rate = nil
loan_duration_years = nil
monthly_interest_rate = nil
loan_duration_months = nil
monthly_payment = nil

def prompt(input)
  puts ">> #{input}"
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def number?(input)
  integer?(input) || float?(input)
end

loop do
  prompt 'Welcome to the loan calculator! What is your name?'
  name = gets.chomp

  break unless name.empty?

  prompt 'Hmmm looks like an invalid name...'
end

loop do
  loop do
    prompt 'What is the loan amount?'
    loan_amount = gets.chomp

    break unless loan_amount.empty? || loan_amount.to_i.negative? || number?(loan_amount) == false

    prompt 'Hmmm looks like an invalid loan amount. Please try again'
  end

  loop do
    prompt 'Ok, and what is your APR? 5% would be 5, 7.5% would be 7.5'
    apr = gets.chomp

    break unless number?(apr) == false || apr.empty? || apr.to_i.negative?

    prompt 'Hmmm looks like an invalid APR. Please try again.'
  end

  annual_percentage_rate = apr.to_f / 100
  monthly_interest_rate = (annual_percentage_rate.to_f / 12)

  loop do
    prompt 'Alright, and how many years is the loan duration?'
    loan_duration_years = gets.chomp

    break unless number?(loan_duration_years) == false || loan_duration_years.to_i < 0 || loan_duration_years.empty?

    prompt 'Hmmm looks like an invalid duration. Please try again.'
  end

  loan_duration_months = loan_duration_years.to_i * 12
  monthly_payment = loan_amount.to_f *
                    (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**-loan_duration_months))

  prompt "Your monthly payment is #{monthly_payment}."

  prompt 'Would you like to perform another operation? (y for yes)'
  answer = gets.chomp

  break unless answer.downcase == 'y'
end
